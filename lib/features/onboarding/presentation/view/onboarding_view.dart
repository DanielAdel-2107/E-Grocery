import 'package:commerce/core/config/config.dart';
import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:commerce/features/onboarding/presentation/widgets/content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => store<OnboardingCubit>(),
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<OnboardingCubit, OnboardingState>(
            listener: (context, state) {
              if(state is OnboardingNavigateToLogin) {
                Navigator.pushReplacementNamed(context, RoutesName.authIntro);
              }
            },
            builder: (context, state) {
              var handler = BlocProvider.of<OnboardingCubit>(context);
              return Column(
                children: [
                  const Spacer(),
                  Expanded(
                    flex: 8,
                    child: PageView.builder(
                      onPageChanged: (val) {
                        handler.onPageChange(val);
                      },
                      itemCount: handler.items.length,
                      controller: handler.controller,
                      itemBuilder: (context, index) {
                        return OnboardingContent(
                          data: handler.items[index],
                        );
                      },
                    ),
                  ),
                  const Spacer(),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      TweenAnimationBuilder(
                        duration: CoreDefaults.duration,
                        tween: Tween<double>(
                            begin: 0,
                            end: (1 / handler.items.length) * (state.currentPage + 1)),
                        curve: Curves.easeInOutBack,
                        builder: (context, double value, _) => SizedBox(
                          height: 70,
                          width: 70,
                          child: CircularProgressIndicator(
                            value: value,
                            strokeWidth: 6,
                            backgroundColor: const Color(0xfff2f2f2),
                            color: CoreThemeColor.primary,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: handler.gotoNextPage,
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder()),
                        child: SvgPicture.asset(
                          CoreIcons.arrowForward,
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: CoreDefaults.padding),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
