import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/widgets/app_settings_list_tile.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text(
          'Settings',
        ),
      ),
      backgroundColor: CoreThemeColor.cardColor,
      body: Container(
        margin: const EdgeInsets.all(CoreDefaults.padding),
        padding: const EdgeInsets.symmetric(
          horizontal: CoreDefaults.padding,
          vertical: CoreDefaults.padding * 2,
        ),
        decoration: BoxDecoration(
          color: CoreThemeColor.scaffoldBackground,
          borderRadius: CoreDefaults.borderRadius,
        ),
        child: Column(
          children: [
            AppSettingsListTile(
              label: 'Language',
              trailing: SvgPicture.asset(CoreIcons.right),
              onTap: () =>
                  Navigator.pushNamed(context, RoutesName.settingsLanguage),
            ),
            AppSettingsListTile(
              label: 'Notification',
              trailing: SvgPicture.asset(CoreIcons.right),
              onTap: () =>
                  Navigator.pushNamed(context, RoutesName.settingsNotifications),
            ),
            AppSettingsListTile(
              label: 'Change Password',
              trailing: SvgPicture.asset(CoreIcons.right),
              onTap: () =>
                  Navigator.pushNamed(context, RoutesName.changePassword),
            ),
            AppSettingsListTile(
              label: 'Change Phone Number',
              trailing: SvgPicture.asset(CoreIcons.right),
              onTap: () =>
                  Navigator.pushNamed(context, RoutesName.changePhoneNumber),
            ),
            AppSettingsListTile(
              label: 'Edit Home Address',
              trailing: SvgPicture.asset(CoreIcons.right),
              onTap: () =>
                  Navigator.pushNamed(context, RoutesName.deliveryAddress),
            ),
            AppSettingsListTile(
              label: 'Location',
              trailing: SvgPicture.asset(CoreIcons.right),
              onTap: () {},
            ),
            AppSettingsListTile(
              label: 'Profile Setting',
              trailing: SvgPicture.asset(CoreIcons.right),
              onTap: () => Navigator.pushNamed(context, RoutesName.profileEdit),
            ),
            AppSettingsListTile(
              label: 'Deactivate Account',
              trailing: SvgPicture.asset(CoreIcons.right),
              onTap: () => Navigator.pushNamed(context, RoutesName.authIntro),
            ),
          ],
        ),
      ),
    );
  }
}
