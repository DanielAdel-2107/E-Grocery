import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/features/onboarding/domain/onboarding_entity.dart';

class OnboardingData {
  static List<OnboardingEntity> items = const [
    OnboardingEntity(
      imageUrl: CoreImages.onboarding1,
      headline: 'Browse all the category',
      description:
          'In aliquip aute exercitation ut et nisi ut mollit. Deserunt dolor elit pariatur aute .',
    ),
    OnboardingEntity(
      imageUrl: CoreImages.onboarding2,
      headline: 'Amazing Discounts & Offers',
      description:
          'In aliquip aute exercitation ut et nisi ut mollit. Deserunt dolor elit pariatur aute .',
    ),
    OnboardingEntity(
      imageUrl: CoreImages.onboarding3,
      headline: 'Delivery in 30 Min',
      description:
          'In aliquip aute exercitation ut et nisi ut mollit. Deserunt dolor elit pariatur aute .',
    ),
  ];
}