import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterBtn extends StatelessWidget {
  const RegisterBtn({
    super.key,
    this.onPressed,
  });
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: CoreDefaults.padding * 2),
      child: Row(
        children: [
          Text(
            'Sign Up',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: onPressed,
            // () {
            //   Navigator.pushNamed(context, RoutesName.numberVerification);
            // },
            style: ElevatedButton.styleFrom(elevation: 1),
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
    );
  }
}
