class CategoryModel {
  final int id;
  final String name;
  final String? products;
  final String image;
  CategoryModel({
    required this.id,
    required this.name,
    this.products,
    required this.image,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      name: json['name'],
      products: json['products'],
      image: json['image'],
    );
  }
}
