import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'profile_squre_tile.dart';

class ProfileHeaderOptions extends StatelessWidget {
  const ProfileHeaderOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(CoreDefaults.padding),
      padding: const EdgeInsets.all(CoreDefaults.padding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: CoreDefaults.borderRadius,
        boxShadow: CoreDefaults.boxShadow,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ProfileSqureTile(
            label: 'All Order',
            icon: CoreIcons.truckIcon,
            onTap: () {
              Navigator.pushNamed(context, RoutesName.myOrder);
            },
          ),
          ProfileSqureTile(
            label: 'Voucher',
            icon: CoreIcons.voucher,
            onTap: () {
              GoogleSignIn google = GoogleSignIn();
              google.disconnect();
              Navigator.pushNamedAndRemoveUntil(
                  context, RoutesName.login, (Route<dynamic> route) => false);
              // Navigator.pushNamed(context, RoutesName.coupon);
            },
          ),
          ProfileSqureTile(
            label: 'Address',
            icon: CoreIcons.homeProfile,
            onTap: () {
              Navigator.pushNamed(context, RoutesName.deliveryAddress);
            },
          ),
        ],
      ),
    );
  }
}
