import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/features/auth/presentation/widgets/register_form.dart';
import 'package:commerce/features/auth/presentation/widgets/register_header.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: CoreThemeColor.scaffoldWithBoxBackground,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                RegisterHeader(),
                SizedBox(height: CoreDefaults.padding),
                RegisterForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
