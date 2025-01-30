import 'package:flutter/material.dart';

class CustomAuthTextFormField extends StatelessWidget {
  const CustomAuthTextFormField({
    super.key,
    required this.controller,
    this.validator,
    this.onPressed,
    this.enableSuffix = false,
    this.isPassword = false,
  });
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Function()? onPressed;
  final bool enableSuffix;
  final bool isPassword;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      textInputAction: TextInputAction.next,
      obscureText: enableSuffix,
      decoration: InputDecoration(
        suffixIcon: isPassword
            ? Material(
                color: Colors.transparent,
                child: IconButton(
                  onPressed: onPressed,
                  icon: enableSuffix
                      ? const Icon(Icons.visibility_off, size: 30)
                      : const Icon(Icons.visibility, size: 30),
                ),
              )
            : null,
      ),
    );
  }
}
