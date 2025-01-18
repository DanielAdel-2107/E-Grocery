class ProductModel {
  final int id;
  final String productName;
  final String description;
  final String imageBin;
  final int price;
  final String categoryName;
  final int categoryId;
  final bool onBidding;
  final bool featured;
  final bool bestSeller;
  final String userName;
  final int userId;
  final int rate;
  final bool inStock;
  int? count;

  ProductModel({
    required this.id,
    required this.productName,
    required this.description,
    required this.imageBin,
    required this.price,
    required this.categoryName,
    required this.categoryId,
    required this.onBidding,
    required this.featured,
    required this.bestSeller,
    required this.userName,
    required this.userId,
    required this.rate,
    required this.inStock,
    this.count = 1,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] as int,
      productName: json['productName'] as String,
      description: json['description'] as String,
      imageBin: json['imageBin'] as String,
      price: json['price'] as int,
      categoryName: json['categoryName'] as String,
      categoryId: json['categoryId'] as int,
      onBidding: json['onBidding'] as bool,
      featured: json['featured'] as bool,
      bestSeller: json['bestSeller'] as bool,
      userName: json['userName'] as String,
      userId: json['userId'] as int,
      rate: json['rate'] as int,
      inStock: json['inStock'] as bool,
      count: 1, // الافتراضي إذا لم يُحدد.
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'productName': productName,
      'description': description,
      'imageBin': imageBin,
      'price': price,
      'categoryName': categoryName,
      'categoryId': categoryId,
      'onBidding': onBidding,
      'featured': featured,
      'bestSeller': bestSeller,
      'userName': userName,
      'userId': userId,
      'rate': rate,
      'inStock': inStock,
      'count': count,
    };
  }
}
