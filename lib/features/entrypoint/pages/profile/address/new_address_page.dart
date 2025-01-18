import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/widgets/app_radio.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:flutter/material.dart';

class NewAddressPage extends StatelessWidget {
  const NewAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoreThemeColor.cardColor,
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text(
          'New Address',
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
              /* <----  Full Name -----> */
              const Text("Full Name"),
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

              /* <---- Address Line 1 -----> */
              const Text("Address Line 1"),
              const SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: CoreDefaults.padding),

              /* <---- Address Line 2 -----> */
              const Text("Address Line 2"),
              const SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: CoreDefaults.padding),

              /* <---- City -----> */
              const Text("City"),
              const SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: CoreDefaults.padding),

              /* <---- State and Zip Code -----> */
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("State"),
                        const SizedBox(height: 8),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: CoreDefaults.padding),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Zip Code"),
                        const SizedBox(height: 8),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: CoreDefaults.padding),
                child: Row(
                  children: [
                    AppRadio(isActive: true),
                    SizedBox(width: CoreDefaults.padding),
                    Text('Make Default Shipping Address'),
                  ],
                ),
              ),
              const SizedBox(height: CoreDefaults.padding),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text('Save Adress'),
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
