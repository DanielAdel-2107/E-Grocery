import 'package:commerce/core/constants/constants.dart';
import 'package:flutter/material.dart';

class AdSpace extends StatelessWidget {
  const AdSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CoreDefaults.padding),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Image.asset(
            CoreImages.homeAdSpace,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}