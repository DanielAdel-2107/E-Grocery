import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/features/auth/presentation/widgets/number_verification_header.dart';
import 'package:commerce/features/auth/presentation/widgets/otp_textfield.dart';
import 'package:commerce/features/auth/presentation/widgets/resend_btn.dart';
import 'package:commerce/features/auth/presentation/widgets/verify_btn.dart';
import 'package:flutter/material.dart';

class NumberVerificationView extends StatelessWidget {
  const NumberVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoreThemeColor.scaffoldWithBoxBackground,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(CoreDefaults.padding),
                  margin: const EdgeInsets.all(CoreDefaults.margin),
                  decoration: BoxDecoration(
                    color: CoreThemeColor.scaffoldBackground,
                    borderRadius: CoreDefaults.borderRadius,
                  ),
                  child: const Column(
                    children: [
                      NumberVerificationHeader(),
                      OTPTextFields(),
                      SizedBox(height: CoreDefaults.padding * 3),
                      ResendButton(),
                      SizedBox(height: CoreDefaults.padding),
                      VerifyButton(),
                      SizedBox(height: CoreDefaults.padding),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
