part of 'dummy.dart';

class Dummy {
  /// List Of Dummy Products
  static List<ProductModel> products = [
    ProductModel(
      name: 'Perry\'s Ice Cream Banana',
      weight: '800 gm',
      cover: 'assets/images/dummy/p1.png',
      images: ['assets/images/dummy/p1.png'],
      price: 13,
      mainPrice: 15,
    ),
    ProductModel(
      name: 'Vanilla Ice Cream Banana',
      weight: '500 gm',
      cover: 'assets/images/dummy/p2.png',
      images: ['assets/images/dummy/p2.png'],
      price: 12,
      mainPrice: 15,
    ),
    ProductModel(
      name: 'Meat',
      weight: '1 Kg',
      cover: 'assets/images/dummy/p3.png',
      images: ['assets/images/dummy/p3.png'],
      price: 15,
      mainPrice: 18,
    ),
  ];

  /// List Of Dummy Bundles
  static List<BundleModel> bundles = [
    BundleModel(
      name: 'Bundle Pack',
      cover: 'assets/images/dummy/bundle1.png',
      itemNames: ['Onion, Oil, Salt'],
      price: 35,
      mainPrice: 50.32,
    ),
    BundleModel(
      name: 'Medium Spices Pack',
      cover: 'assets/images/dummy/bundle2.png',
      itemNames: ['Onion, Oil, Salt'],
      price: 35,
      mainPrice: 50.32,
    ),
    BundleModel(
      name: 'Bundle Pack',
      cover: 'assets/images/dummy/bundle3.png',
      itemNames: ['Onion, Oil, Salt'],
      price: 35,
      mainPrice: 50.32,
    ),
    BundleModel(
      name: 'Bundle Pack',
      cover: 'assets/images/dummy/bundle4.png',
      itemNames: ['Onion, Oil, Salt'],
      price: 35,
      mainPrice: 50.32,
    ),
  ];
}