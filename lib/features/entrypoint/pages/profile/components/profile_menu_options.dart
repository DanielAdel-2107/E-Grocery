import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'profile_list_tile.dart';

class ProfileMenuOptions extends StatelessWidget {
  const ProfileMenuOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(CoreDefaults.padding),
      padding: const EdgeInsets.all(CoreDefaults.padding),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: CoreDefaults.boxShadow,
        borderRadius: CoreDefaults.borderRadius,
      ),
      child: Column(
        children: [
          ProfileListTile(
            title: 'My Profile',
            icon: CoreIcons.profilePerson,
            onTap: () => Navigator.pushNamed(context, RoutesName.profileEdit),
          ),
          const Divider(thickness: 0.1),
          ProfileListTile(
            title: 'Notification',
            icon: CoreIcons.profileNotification,
            onTap: () => Navigator.pushNamed(context, RoutesName.notifications),
          ),
          const Divider(thickness: 0.1),
          ProfileListTile(
            title: 'Setting',
            icon: CoreIcons.profileSetting,
            onTap: () => Navigator.pushNamed(context, RoutesName.settings),
          ),
          const Divider(thickness: 0.1),
          ProfileListTile(
            title: 'Payment',
            icon: CoreIcons.profilePayment,
            onTap: () => Navigator.pushNamed(context, RoutesName.paymentMethod),
          ),
          const Divider(thickness: 0.1),
          ProfileListTile(
            title: 'Logout',
            icon: CoreIcons.profileLogout,
            onTap: () =>
                Navigator.pushNamed(context, RoutesName.loginOrRegister),
          ),
        ],
      ),
    );
  }
}
