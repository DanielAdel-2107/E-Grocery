// import 'package:commerce/core/services/api/api_consumer.dart';
// import 'package:commerce/core/services/api/end_points.dart';
// import 'package:flutter/material.dart';

// class CategoryProvider with ChangeNotifier {
//   final ApiConsumer apiConsumer;
//   List<String> categories = [];
//   bool isLoaded = false;
//   CategoryProvider({required this.apiConsumer});
//   loadCategory() async {
//     final response = await apiConsumer.get(EndPoints.getCategories);
//     response.forEach((element) {
//       categories.add(element);
//     });
//     isLoaded = true;
//     notifyListeners();
//   }
// }
