import 'package:commerce/core/services/api/api_consumer.dart';
import 'package:commerce/core/services/api/end_points.dart';
import 'package:commerce/core/services/api/exceptions.dart';
import 'package:commerce/core/functions/show_dialog.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:flutter/material.dart';

class RegisterProvider with ChangeNotifier {
  final ApiConsumer apiConsumer;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final fotmKey = GlobalKey<FormState>();
  bool isLoading = false;
  RegisterProvider({required this.apiConsumer});
  bool obscurePassword = true;
  toggelPassword() {
    obscurePassword = !obscurePassword;
    notifyListeners();
  }

  signUp(context) async {
    if (fotmKey.currentState!.validate()) {
      isLoading = true;
      notifyListeners();
      try {
        final response = await apiConsumer.post(EndPoints.register, data: {
          ApiKeys.fullName: "Daniel Adel",
          ApiKeys.username: nameController.text,
          ApiKeys.password: passwordController.text,
          ApiKeys.email: emailController.text,
          ApiKeys.phone: phoneNumberController.text,
          ApiKeys.roleId: 2
        });
        Navigator.pushNamed(context, RoutesName.numberVerification);
        showCustomDialog(
            context: context,
            title: "Success",
            message: "Your account has been created successfully");
      } on ServerException catch (e) {
        showCustomDialog(
            context: context, title: "Failure", message: e.errorModel.title!);
      }
      isLoading = false;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    phoneNumberController.dispose();
  }
}
