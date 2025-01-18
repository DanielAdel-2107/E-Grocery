import 'package:commerce/features/auth/presentation/widgets/login_or_register_footer.dart';
import 'package:commerce/features/auth/presentation/widgets/logo_headline.dart';
import 'package:flutter/material.dart';

class LoginOrRegisterView extends StatelessWidget {
  const LoginOrRegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Spacer(flex: 2),
          LogoHeadline(),
          Spacer(),
          LoginOrRegisterFooter(),
          Spacer(),
        ],
      ),
    );
  }
}