import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/features/onboarding/domain/onboarding_entity.dart';
import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    super.key,
    required this.data,
  });

  final OnboardingEntity data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(CoreDefaults.padding * 2),
            child: Image.asset(
              data.imageUrl,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(CoreDefaults.padding),
          child: Column(
            children: [
              Text(
                data.headline,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(CoreDefaults.padding),
                child: Text(
                  data.description,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}