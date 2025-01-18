import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/widgets/app_radio.dart';
import 'package:flutter/material.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({
    super.key,
    required this.label,
    required this.phoneNumber,
    required this.address,
    required this.isActive,
    required this.onTap,
  });

  final String label;
  final String phoneNumber;
  final String address;
  final bool isActive;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: CoreDefaults.padding,
        vertical: CoreDefaults.padding / 2,
      ),
      child: Material(
        color: isActive
            ? CoreThemeColor.coloredBackground
            : CoreThemeColor.textInputBackground,
        borderRadius: CoreDefaults.borderRadius,
        child: InkWell(
          borderRadius: CoreDefaults.borderRadius,
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(CoreDefaults.padding),
            decoration: BoxDecoration(
              borderRadius: CoreDefaults.borderRadius,
              border: Border.all(
                color: isActive ? CoreThemeColor.primary : Colors.grey,
                width: isActive ? 1 : 0.3,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppRadio(isActive: isActive),
                const SizedBox(width: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(phoneNumber),
                    const SizedBox(height: 8),
                    Text(address)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
