import 'package:commerce/core/config/config.dart';
import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/utils/validators.dart';
import 'package:commerce/core/widgets/custom_auth_text_form_field.dart';
import 'package:commerce/features/auth/presentation/provider/register_provider.dart';
import 'package:commerce/features/auth/presentation/widgets/have_account.dart';
import 'package:commerce/features/auth/presentation/widgets/register_btn.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => store<RegisterProvider>(),
      child: Consumer<RegisterProvider>(
        builder: (context, provider, child) {
          return Container(
            margin: const EdgeInsets.all(CoreDefaults.margin),
            padding: const EdgeInsets.all(CoreDefaults.padding),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: CoreDefaults.boxShadow,
              borderRadius: CoreDefaults.borderRadius,
            ),
            child: Form(
              key: provider.fotmKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Name"),
                  const SizedBox(height: 8),
                  CustomAuthTextFormField(
                    controller: provider.nameController,
                    validator: Validators.requiredWithFieldName('Name').call,
                  ),
                  const SizedBox(height: CoreDefaults.padding),
                  const Text("Phone Number"),
                  const SizedBox(height: 8),
                  CustomAuthTextFormField(
                    controller: provider.phoneNumberController,
                    validator: Validators.required.call,
                  ),
                  const SizedBox(height: CoreDefaults.padding),
                  const Text("Email Address"),
                  const SizedBox(height: 8),
                  CustomAuthTextFormField(
                    controller: provider.emailController,
                    validator: Validators.required.call,
                  ),
                  const SizedBox(height: CoreDefaults.padding),
                  const Text("Password"),
                  const SizedBox(height: 8),
                  CustomAuthTextFormField(
                    controller: provider.passwordController,
                    validator: Validators.required.call,
                    enableSuffix: provider.obscurePassword,
                    isPassword: true,
                    onPressed: () {
                      provider.toggelPassword();
                    },
                  ),
                  const SizedBox(height: CoreDefaults.padding),
                  RegisterBtn(
                    onPressed: () {
                      provider.signUp(context);
                    },
                  ),
                  const AlreadyHaveAnAccount(),
                  const SizedBox(height: CoreDefaults.padding),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
