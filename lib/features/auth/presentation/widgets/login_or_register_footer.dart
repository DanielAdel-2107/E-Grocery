import 'package:flutter/material.dart';
import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginOrRegisterFooter extends StatelessWidget {
  const LoginOrRegisterFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(CoreDefaults.padding),
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, RoutesName.login),
              child: const Text('Login With Email'),
            ),
          ),
        ),
        const SizedBox(height: CoreDefaults.margin),
        Text(
          'OR',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: CoreDefaults.margin),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(CoreIcons.appleIcon),
              iconSize: 48,
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(CoreIcons.googleIcon),
              iconSize: 48,
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(CoreIcons.twitterIcon),
              iconSize: 48,
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(CoreIcons.facebookIcon),
              iconSize: 48,
            ),
          ],
        ),
      ],
    );
  }
}