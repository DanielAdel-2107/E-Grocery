import 'package:commerce/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackBtn extends StatelessWidget {
  /// Custom Back labelLarge with a custom ICON for this app
  const BackBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(CoreIcons.arrowBackward),
      onPressed: () => Navigator.pop(context),
    );
  }
}