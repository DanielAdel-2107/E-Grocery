import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:flutter/material.dart';

class PaymentOptionTile extends StatelessWidget {
  const PaymentOptionTile({
    super.key,
    required this.icon,
    required this.label,
    required this.accountName,
    required this.onTap,
  });

  final String icon;
  final String label;
  final String accountName;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: CoreDefaults.padding / 2,
        horizontal: CoreDefaults.padding,
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: CoreDefaults.borderRadius,
        child: Container(
          padding: const EdgeInsets.all(CoreDefaults.padding),
          decoration: BoxDecoration(
            border: Border.all(width: 0.1, color: CoreThemeColor.placeholder),
            borderRadius: CoreDefaults.borderRadius,
          ),
          child: Row(
            children: [
              SizedBox(
                width: 60,
                height: 60,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image.asset(icon),
                ),
              ),
              const SizedBox(width: CoreDefaults.padding),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.black),
                  ),
                  const SizedBox(height: CoreDefaults.padding / 3),
                  Text(
                    accountName,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.black),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
