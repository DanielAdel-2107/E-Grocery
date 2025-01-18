import 'package:commerce/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'components/profile_header.dart';
import 'components/profile_menu_options.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CoreThemeColor.cardColor,
      child: const Column(
        children: [
          ProfileHeader(),
          ProfileMenuOptions(),
        ],
      ),
    );
  }
}
