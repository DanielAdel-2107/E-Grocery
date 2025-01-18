import 'dart:developer';

import 'package:commerce/core/config/config.dart';
import 'package:commerce/core/database/cache/cache_helper.dart';
import 'package:commerce/core/services/api/api_consumer.dart';
import 'package:commerce/core/services/api/end_points.dart';
import 'package:commerce/core/services/api/exceptions.dart';
import 'package:commerce/core/functions/show_dialog.dart';
import 'package:commerce/core/model/user_model.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class LoginProvider with ChangeNotifier {
  final ApiConsumer apiConsumer;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  UserModel? user;
  bool isLoading = false;
  LoginProvider({required this.apiConsumer});
  login(context) async {
    if (formKey.currentState!.validate()) {
      isLoading = true;
      notifyListeners();

      try {
        final response = await apiConsumer.post(EndPoints.login, data: {
          ApiKeys.username: nameController.text,
          ApiKeys.password: passwordController.text,
        });
        user = UserModel.fromJson(response);
        CacheHelper().saveData(key: "id", value: user?.userId);
        final decodeToken = JwtDecoder.decode(user!.accessToken);
        Navigator.pushNamedAndRemoveUntil(
            context, RoutesName.entryPoint, (Route<dynamic> route) => false);
        showCustomDialog(
            context: context, title: "Success", message: "Login Successfully");
      } on ServerException catch (e) {
        showCustomDialog(
            context: context, title: "Failure", message: e.errorMessage);
      }
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    passwordController.dispose();
  }
}
