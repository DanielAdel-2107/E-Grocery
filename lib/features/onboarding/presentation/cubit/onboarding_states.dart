part of 'onboarding_cubit.dart';

abstract class OnboardingState {
  final int currentPage;

  const OnboardingState({this.currentPage = 0});
}

class OnboardingInitial extends OnboardingState {}

class OnboardingPageChanged extends OnboardingState {
  const OnboardingPageChanged({required super.currentPage});
}

class OnboardingNavigateToLogin extends OnboardingState {}
