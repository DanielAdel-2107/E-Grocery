import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:flutter/material.dart';

class ChangePhoneNumberPage extends StatelessWidget {
  const ChangePhoneNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text(
          'Change Phone Number Page',
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
                /* <----  New Phone Number -----> */
                const Text("New Phone Number"),
                const SizedBox(height: 8),
                TextFormField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: CoreDefaults.padding),

                /* <---- Retype Phone Number -----> */
                const Text("Retype Phone Number"),
                const SizedBox(height: 8),
                TextFormField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                ),
                const SizedBox(height: CoreDefaults.padding),

                /* <---- Submit -----> */
                const SizedBox(height: CoreDefaults.padding),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Update Phone Number'),
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
