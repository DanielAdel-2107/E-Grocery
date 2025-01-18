import 'package:commerce/core/theme/theme.dart';
import 'package:flutter/material.dart';

class AppRadio extends StatelessWidget {
  const AppRadio({
    super.key,
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: isActive ? CoreThemeColor.primary : CoreThemeColor.placeholder),
        shape: BoxShape.circle,
      ),
      child: Container(
        width: 16,
        height: 16,
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: isActive ? CoreThemeColor.primary : CoreThemeColor.textInputBackground,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
