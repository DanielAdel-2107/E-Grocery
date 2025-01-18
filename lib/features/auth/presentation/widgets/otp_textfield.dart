import 'package:commerce/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPTextFields extends StatelessWidget {
  const OTPTextFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: CoreThemeData.defaultTheme.copyWith(
        inputDecorationTheme: CoreInputTheme.otpInputDecorationTheme,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 68,
            height: 68,
            child: TextFormField(
              onChanged: (v) {
                if (v.length == 1) {
                  FocusScope.of(context).nextFocus();
                } else {
                  FocusScope.of(context).previousFocus();
                }
              },
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(
            width: 68,
            height: 68,
            child: TextFormField(
              onChanged: (v) {
                if (v.length == 1) {
                  FocusScope.of(context).nextFocus();
                } else {
                  FocusScope.of(context).previousFocus();
                }
              },
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(
            width: 68,
            height: 68,
            child: TextFormField(
              onChanged: (v) {
                if (v.length == 1) {
                  FocusScope.of(context).nextFocus();
                } else {
                  FocusScope.of(context).previousFocus();
                }
              },
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(
            width: 68,
            height: 68,
            child: TextFormField(
              onChanged: (v) {
                if (v.length == 1) {
                  FocusScope.of(context).nextFocus();
                } else {
                  FocusScope.of(context).previousFocus();
                }
              },
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              keyboardType: TextInputType.number,
            ),
          ),
        ],
      ),
    );
  }
}