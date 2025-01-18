import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/features/auth/presentation/widgets/intro_page_background_wrapper.dart';
import 'package:commerce/features/auth/presentation/widgets/intro_page_body_area.dart';
import 'package:flutter/material.dart';

class IntroAuthView extends StatelessWidget {
  const IntroAuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const IntroLoginBackgroundWrapper(imageURL: CoreImages.introBackground1),
          Container(
            color: Colors.black.withOpacity(0.7),
            child: const IntroPageBodyArea(),
          )
        ],
      ),
    );
  }
}