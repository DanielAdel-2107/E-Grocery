import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoreThemeColor.scaffoldWithBoxBackground,
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text('Forget Password'),
        backgroundColor: CoreThemeColor.scaffoldBackground,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(CoreDefaults.margin),
                padding: const EdgeInsets.symmetric(
                  horizontal: CoreDefaults.padding,
                  vertical: CoreDefaults.padding * 3,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: CoreDefaults.borderRadius,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Reset your password',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: CoreDefaults.padding),
                    const Text(
                      'Please enter your number. We will send a code\nto your phone to reset your password.',
                    ),
                    const SizedBox(height: CoreDefaults.padding * 3),
                    const Text("Phone Number"),
                    const SizedBox(height: 8),
                    TextFormField(
                      autofocus: true,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: CoreDefaults.padding),
                    const SizedBox(height: CoreDefaults.padding),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RoutesName.passwordReset);
                        },
                        child: const Text('Send me link'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}