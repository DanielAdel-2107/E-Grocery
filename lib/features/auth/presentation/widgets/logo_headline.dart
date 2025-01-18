import 'package:flutter/material.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/constants/constants.dart';

class LogoHeadline extends StatelessWidget {
  const LogoHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: Image.asset(CoreImages.roundedLogo),
          ),
        ),
        Text(
          'Welcome to our',
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          'E-Grocery',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: CoreThemeColor.primary,
              ),
        )
      ],
    );
  }
}