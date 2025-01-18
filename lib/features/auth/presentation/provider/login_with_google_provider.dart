import 'package:commerce/core/functions/show_dialog.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/services/firebase/sign_in_with_google.dart';
import 'package:flutter/material.dart';

class LoginWithGoogleProvider with ChangeNotifier {
  loginWithGoogle(context) async {
    try {
      await signInWithGoogle();
      Navigator.pushNamedAndRemoveUntil(
          context, RoutesName.entryPoint, (Route<dynamic> route) => false);
      showCustomDialog(
          context: context, title: "Success", message: "Login Successfully");
    } on Exception catch (e) {
      showCustomDialog(
        context: context,
        title: "Error",
        message: e.toString(),
      );
    }
  }
}
