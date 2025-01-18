import 'package:commerce/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({
    super.key,
    required this.onTap,
    required this.icon,
    required this.title,
  });

  final void Function() onTap;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: CoreDefaults.borderRadius,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SvgPicture.asset(icon),
              const SizedBox(width: 16),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.black),
              ),
              const Spacer(),
              SvgPicture.asset(CoreIcons.right),
            ],
          ),
        ),
      ),
    );
  }
}
