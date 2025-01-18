import 'dart:developer';
import 'package:commerce/core/database/cache/cache_helper.dart';
import 'package:commerce/core/model/category_model.dart';
import 'package:commerce/core/model/product_model.dart';
import 'package:commerce/core/services/api/api_consumer.dart';
import 'package:commerce/core/services/api/end_points.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  final ApiConsumer apiConsumer;
  ProductProvider({required this.apiConsumer});

  String categoryName = '';
  String productId = '';
  selectCategory(String name, String productId) {
    products.clear();
    categoryName = name;
    this.productId = productId;
    notifyListeners();
  }

  final List<ProductModel> products = [];
  Future<List<ProductModel>> getProducts() async {
    if (products.isNotEmpty) {
      return products;
    }
    try {
      final data = await apiConsumer
          .get("${EndPoints.getProducts}${EndPoints.getByCategory}/$productId");
      products.clear();
      data.forEach(
        (element) {
          products.add(ProductModel.fromJson(element));
        },
      );
    } catch (e) {
      throw Exception("Failed to load categories: $e");
    }
    return products;
  }

  ////////////
  final List<CategoryModel> categories = [];
  Future<List<CategoryModel>> getCategory() async {
    if (categories.isNotEmpty) {
      return categories;
    }
    try {
      final data = await apiConsumer.get(EndPoints.getCategories);
      categories.clear();
      data.forEach((element) {
        categories.add(CategoryModel.fromJson(element));
      });
    } catch (e) {
      throw Exception("Failed to load categories: $e");
    }
    return categories;
  }

  ////////////////
  Set<ProductModel> cart = {};
  void addToCart(ProductModel product) {
    cart.add(product);
    log(product.productName.toString());
  }

  double totalPrice() => cart.fold(
      0,
      (previousValue, element) =>
          previousValue + (element.price) * (element.count ?? 1));

  void increaseProductItem(ProductModel product) {
    product.count = (product.count! + 1);
    notifyListeners();
  }

  void decreaseProductItem(ProductModel product) {
    if (product.count! > 1) {
      product.count = (product.count! - 1);
    }
    notifyListeners();
  }

  void removeFromCart(ProductModel product) {
    cart.remove(product);
    notifyListeners();
  }

  ProductModel? selectedProductModel;
  selectProductModel(ProductModel productModel) {
    selectedProductModel = productModel;
    notifyListeners();
  }

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController apartmentController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  checkoutCart() async {
    if (cart.isNotEmpty) {
      // تحويل userId إلى نص إذا كان من النوع int
      final userId = CacheHelper().getDataString(key: "id")?.toString();
      log(userId.toString());
      await apiConsumer.post(
        EndPoints.carts,
        data: {
          "userId": userId,
          "orderItems": cart
              .map((e) => {"productId": e.id, "quantity": e.count})
              .toList(),
          "orderDate": DateTime.now().toIso8601String(),
          "orderStatusId": 1,
          "firstName": firstNameController.text,
          "lastName": lastNameController.text,
          "country": countryController.text,
          "address": addressController.text,
          "apartment": apartmentController.text,
          "phone": phoneController.text,
          "email": emailController.text,
        },
      );

      print("User ID: $userId");
    }
  }
}
