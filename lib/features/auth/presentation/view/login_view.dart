import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/features/auth/presentation/widgets/login_form.dart';
import 'package:commerce/features/auth/presentation/widgets/login_header.dart';
import 'package:commerce/features/auth/presentation/widgets/not_have_account.dart';
import 'package:commerce/features/auth/presentation/widgets/social_login.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginHeader(),
                LoginPageForm(),
                SizedBox(height: CoreDefaults.padding),
                SocialLogins(),
                DontHaveAccountRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}