import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:flutter/material.dart';

class VerticalStepIndicator extends StatelessWidget {
  const VerticalStepIndicator({
    super.key,
    this.height = 50,
    this.isStart = false,
    this.isActive = false,
    this.isEnd = false,
  });

  final double height;
  final bool isStart;
  final bool isActive;
  final bool isEnd;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: CoreDefaults.margin,
      ),
      child: Column(
        children: [
          if (!isStart)
            Container(
              height: height / 2,
              width: 3,
              decoration: BoxDecoration(
                color: isActive ? CoreThemeColor.primary : Colors.grey,
              ),
            ),
          Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              border: Border.all(
                color: isActive ? CoreThemeColor.primary : Colors.grey,
                width: 3,
              ),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            height: !isStart ? height / 2 : height,
            width: 3,
            decoration: BoxDecoration(
              color: isActive ? CoreThemeColor.primary : Colors.grey,
              borderRadius: isEnd ? CoreDefaults.borderRadius : null,
            ),
          )
        ],
      ),
    );
  }
}
