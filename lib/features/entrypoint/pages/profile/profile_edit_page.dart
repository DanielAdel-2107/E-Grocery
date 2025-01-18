import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:flutter/material.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoreThemeColor.cardColor,
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text(
          'Profile',
        ),
      ),
      body: SingleChildScrollView(
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
              /* <----  First Name -----> */
              const Text("First Name"),
              const SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: CoreDefaults.padding),

              /* <---- Last Name -----> */
              const Text("Last Name"),
              const SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: CoreDefaults.padding),

              /* <---- Phone Number -----> */
              const Text("Phone Number"),
              const SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: CoreDefaults.padding),

              /* <---- Gender -----> */
              const Text("Gender"),
              const SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: CoreDefaults.padding),

              /* <---- Birthday -----> */
              const Text("Birthday"),
              const SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: CoreDefaults.padding),

              /* <---- Password -----> */

              /* <---- Birthday -----> */
              const Text("Password"),
              const SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.next,
                obscureText: true,
              ),
              const SizedBox(height: CoreDefaults.padding),

              /* <---- Submit -----> */
              const SizedBox(height: CoreDefaults.padding),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text('Save'),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
