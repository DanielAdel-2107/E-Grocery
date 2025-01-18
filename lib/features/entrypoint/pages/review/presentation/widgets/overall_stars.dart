import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/widgets/review_stars.dart';
import 'package:flutter/material.dart';

class OverallStars extends StatelessWidget {
  const OverallStars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(CoreDefaults.padding),
          decoration: const BoxDecoration(
              color: CoreThemeColor.primary, shape: BoxShape.circle),
          child: Text(
            '4.5',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          '320 Reviews',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.black,
              ),
        ),
        const ReviewStars(starsGiven: 4),
      ],
    );
  }
}
