import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text(
          'Change Password Page',
        ),
      ),
      backgroundColor: CoreThemeColor.cardColor,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
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
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* <----  Current Password -----> */
                const Text("Current Password"),
                const SizedBox(height: 8),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(16),
                      child: SvgPicture.asset(CoreIcons.eye),
                    ),
                    suffixIconConstraints: const BoxConstraints(),
                  ),
                ),
                const SizedBox(height: CoreDefaults.padding),

                /* <---- New Password -----> */
                const Text("New Password"),
                const SizedBox(height: 8),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(16),
                      child: SvgPicture.asset(CoreIcons.eye),
                    ),
                    suffixIconConstraints: const BoxConstraints(),
                  ),
                ),
                const SizedBox(height: CoreDefaults.padding),

                /* <---- Confirm Password-----> */
                const Text("Confirm Password"),
                const SizedBox(height: 8),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(16),
                      child: SvgPicture.asset(CoreIcons.eye),
                    ),
                    suffixIconConstraints: const BoxConstraints(),
                  ),
                ),
                const SizedBox(height: CoreDefaults.padding),

                /* <---- Submit -----> */
                const SizedBox(height: CoreDefaults.padding),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Update Password'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
