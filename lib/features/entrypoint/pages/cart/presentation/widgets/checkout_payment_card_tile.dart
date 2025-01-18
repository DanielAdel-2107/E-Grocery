import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentCardTile extends StatelessWidget {
  const PaymentCardTile({
    super.key,
    required this.icon,
    required this.onTap,
    required this.label,
    required this.isActive,
  });

  final String icon;
  final String label;
  final void Function() onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: isActive
            ? CoreThemeColor.coloredBackground
            : CoreThemeColor.scaffoldBackground,
        borderRadius: CoreDefaults.borderRadius,
        child: InkWell(
          onTap: onTap,
          borderRadius: CoreDefaults.borderRadius,
          child: Container(
            height: 66,
            width: 135,
            padding: const EdgeInsets.symmetric(),
            decoration: BoxDecoration(
              borderRadius: CoreDefaults.borderRadius,
              border: Border.all(
                color: isActive ? CoreThemeColor.primary : CoreThemeColor.placeholder,
                width: isActive ? 1 : 0.2,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(icon),
                const SizedBox(height: 8),
                Text(
                  label,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
