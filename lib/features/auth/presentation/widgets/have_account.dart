import 'package:commerce/core/routes/routes.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Already Have Account?'),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, RoutesName.login),
          child: const Text('Log In'),
        ),
      ],
    );
  }
}