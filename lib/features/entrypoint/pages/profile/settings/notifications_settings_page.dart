import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/widgets/app_settings_list_tile.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationSettingsPage extends StatelessWidget {
  const NotificationSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text(
          'Change Notificaiton Settings',
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
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: Column(
            children: [
              const SizedBox(height: CoreDefaults.padding),
              AppSettingsListTile(
                label: 'App Notification',
                trailing: Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    value: true,
                    onChanged: (v) {},
                  ),
                ),
              ),
              AppSettingsListTile(
                label: 'Phone Number Notification',
                trailing: Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    value: true,
                    onChanged: (v) {},
                  ),
                ),
              ),
              AppSettingsListTile(
                label: 'Offer Notification',
                trailing: Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    value: false,
                    onChanged: (v) {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
