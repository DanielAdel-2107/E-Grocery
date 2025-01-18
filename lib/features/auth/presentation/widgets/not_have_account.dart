import 'package:commerce/core/routes/routes.dart';
import 'package:flutter/material.dart';

class DontHaveAccountRow extends StatelessWidget {
  const DontHaveAccountRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Don\'t Have Account?'),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, RoutesName.register),
          child: const Text('Sign Up'),
        ),
      ],
    );
  }
}