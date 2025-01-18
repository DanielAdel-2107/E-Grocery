import 'package:commerce/core/constants/constants.dart';
import 'package:flutter/material.dart';

class AppSettingsListTile extends StatelessWidget {
  const AppSettingsListTile({
    super.key,
    required this.label,
    this.trailing,
    this.onTap,
  });

  final String label;
  final Widget? trailing;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: CoreDefaults.borderRadius,
      child: InkWell(
        onTap: onTap,
        borderRadius: CoreDefaults.borderRadius,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    label,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.black,
                        ),
                  ),
                  const Spacer(),
                  if (trailing != null) trailing!,
                ],
              ),
              const Divider(thickness: 0.1),
            ],
          ),
        ),
      ),
    );
  }
}