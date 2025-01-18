import 'package:commerce/core/services/api/dio_consumer.dart';
import 'package:commerce/core/config/config.dart';
import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/utils/validators.dart';
import 'package:commerce/features/auth/presentation/provider/login_provider.dart';
import 'package:commerce/features/auth/presentation/provider/register_provider.dart';
import 'package:commerce/features/auth/presentation/widgets/login_btn.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class LoginPageForm extends StatelessWidget {
  const LoginPageForm({
    super.key,
  });

//   @override
//   State<LoginPageForm> createState() => _LoginPageFormState();
// }

// class _LoginPageFormState extends State<LoginPageForm> {
//   final _key = GlobalKey<FormState>();

  // bool isPasswordShown = false;
  // onPassShowClicked() {
  //   isPasswordShown = !isPasswordShown;
  //   setState(() {});
  // }

  // onLogin() {
  //   final bool isFormOkay = _key.currentState?.validate() ?? false;
  //   if (isFormOkay) {
  //     Navigator.pushNamedAndRemoveUntil(
  //         context, RoutesName.entryPoint, (Route<dynamic> route) => false);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: CoreThemeData.defaultTheme.copyWith(
        inputDecorationTheme: CoreInputTheme.secondaryInputDecorationTheme,
      ),
      child: ChangeNotifierProvider(
        create: (context) => store<LoginProvider>(),
        child: Consumer<LoginProvider>(builder: (context, provider, child) {
          return Padding(
            padding: const EdgeInsets.all(CoreDefaults.padding),
            child: Form(
              key: provider.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Phone Field
                  const Text("User name"),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: provider.nameController,
                    validator:
                        Validators.requiredWithFieldName('User name').call,
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: CoreDefaults.padding),

                  // Password Field
                  const Text("Password"),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: provider.passwordController,
                    // validator: Validators.password.call,
                    // onFieldSubmitted: (v) => onLogin(),
                    textInputAction: TextInputAction.done,
                    // obscureText: !isPasswordShown,
                    decoration: InputDecoration(
                      suffixIcon: Material(
                        color: Colors.transparent,
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            CoreIcons.eye,
                            width: 24,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Forget Password labelLarge
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesName.forgotPassword);
                      },
                      child: const Text('Forget Password?'),
                    ),
                  ),

                  // Login labelLarge
                  provider.isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : LoginButton(onPressed: () {
                          provider.login(context);
                        }),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
