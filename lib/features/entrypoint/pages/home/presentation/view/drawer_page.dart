import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/widgets/app_settings_list_tile.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text('Menu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(CoreDefaults.padding),
        child: Column(
          children: [
            AppSettingsListTile(
              label: 'Invite Friend',
              trailing: SvgPicture.asset(CoreIcons.right),
            ),
            AppSettingsListTile(
              label: 'About Us',
              trailing: SvgPicture.asset(CoreIcons.right),
              onTap: () => Navigator.pushNamed(context, RoutesName.aboutUs),
            ),
            AppSettingsListTile(
              label: 'FAQs',
              trailing: SvgPicture.asset(CoreIcons.right),
              onTap: () => Navigator.pushNamed(context, RoutesName.faq),
            ),
            AppSettingsListTile(
              label: 'Terms & Conditions',
              trailing: SvgPicture.asset(CoreIcons.right),
              onTap: () =>
                  Navigator.pushNamed(context, RoutesName.termsAndConditions),
            ),
            AppSettingsListTile(
              label: 'Help Center',
              trailing: SvgPicture.asset(CoreIcons.right),
              onTap: () => Navigator.pushNamed(context, RoutesName.help),
            ),
            AppSettingsListTile(
              label: 'Rate This App',
              trailing: SvgPicture.asset(CoreIcons.right),
              // onTap: () => Navigator.pushNamed(context, RoutesName.help),
            ),
            AppSettingsListTile(
              label: 'Privacy Policy',
              trailing: SvgPicture.asset(CoreIcons.right),
              // onTap: () => Navigator.pushNamed(context, RoutesName.),
            ),
            AppSettingsListTile(
              label: 'Contact Us',
              trailing: SvgPicture.asset(CoreIcons.right),
              onTap: () => Navigator.pushNamed(context, RoutesName.contactUs),
            ),
            const SizedBox(height: CoreDefaults.padding * 3),
            AppSettingsListTile(
              label: 'Logout',
              trailing: SvgPicture.asset(CoreIcons.right),
              onTap: () => Navigator.pushNamed(context, RoutesName.authIntro),
            ),
          ],
        ),
      ),
    );
  }
}