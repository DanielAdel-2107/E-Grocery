import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:flutter/material.dart';

class IntroPageBodyArea extends StatelessWidget {
  const IntroPageBodyArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.all(CoreDefaults.padding),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to our',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    'E-Grocery',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: CoreThemeColor.primary),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(flex: 5),
          Padding(
            padding: const EdgeInsets.all(CoreDefaults.padding),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(
                        context, RoutesName.loginOrRegister),
                    child: const Text('Continue with Email or Phone'),
                  ),
                ),
                const SizedBox(height: CoreDefaults.padding),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, RoutesName.register),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    child: const Text('Create an account'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
