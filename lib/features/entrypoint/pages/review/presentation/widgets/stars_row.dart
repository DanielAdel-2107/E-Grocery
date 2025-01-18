import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:flutter/material.dart';

class StarsRow extends StatelessWidget {
  const StarsRow({
    super.key,
    required this.label,
    required this.maxValue,
    required this.totalPercentage,
  });

  final String label;
  final String maxValue;
  final double totalPercentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(label),
          const SizedBox(width: 8),
          Expanded(
            flex: 5,
            child: ClipRRect(
              borderRadius: CoreDefaults.borderRadius,
              child: SizedBox(
                height: 10,
                child: LinearProgressIndicator(
                  value: totalPercentage / 100,
                  color: CoreThemeColor.primary,
                  backgroundColor: CoreThemeColor.cardColor,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 1,
            child: Text(
              maxValue,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
