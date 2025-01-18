import 'package:commerce/core/constants/constants.dart';
import 'package:flutter/material.dart';

class NumberVerificationHeader extends StatelessWidget {
  const NumberVerificationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: CoreDefaults.padding),
        Text(
          'Entry Your 4 digit code',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: CoreDefaults.padding),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: Image.asset(
              CoreImages.numberVerfication,
            ),
          ),
        ),
        const SizedBox(height: CoreDefaults.padding * 3),
      ],
    );
  }
}