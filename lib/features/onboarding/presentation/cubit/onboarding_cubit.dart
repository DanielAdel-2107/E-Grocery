import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/features/onboarding/domain/onboarding_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'onboarding_states.dart';


class OnboardingCubit extends Cubit<OnboardingState> {
  final PageController controller = PageController();
  final List<OnboardingEntity> items;

  OnboardingCubit({required this.items}) : super(OnboardingInitial());

  void onPageChange(int value) {
    emit(OnboardingPageChanged(currentPage: value));
  }

  void gotoNextPage() {
    if (state.currentPage < items.length - 1) {
      controller.nextPage(
        duration: CoreDefaults.duration,
        curve: Curves.ease,
      );
      emit(OnboardingPageChanged(currentPage: state.currentPage + 1));
    } else {
      emit(OnboardingNavigateToLogin());
    }
  }

  @override
  Future<void> close() {
    controller.dispose();
    return super.close();
  }
}