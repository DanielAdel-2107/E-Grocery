import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:flutter/material.dart';

class AnimatedDots extends StatelessWidget {
  const AnimatedDots({
    super.key,
    required this.totalItems,
    required this.currentIndex,
  });

  final int totalItems;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalItems,
        (index) => AnimatedContainer(
          duration: CoreDefaults.duration,
          height: 5,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: currentIndex == index ? 25 : 15,
          decoration: BoxDecoration(
            color: currentIndex == index
                ? CoreThemeColor.primary
                : const Color(0xFF9FC5A6),
            borderRadius: CoreDefaults.borderRadius,
          ),
        ),
      ),
    );
  }
}