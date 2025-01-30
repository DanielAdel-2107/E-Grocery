import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:flutter/material.dart';

class UserMeaasge extends StatelessWidget {
  const UserMeaasge({
    super.key,
    required this.message,
  });
  final String message;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        BubbleSpecialThree(
          text: message,
          color: CoreThemeColor.primary,
          tail: true,
          isSender: true,
          textStyle: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        const CircleAvatar(
          backgroundImage: AssetImage(CoreImages.user),
        ),
      ],
    );
  }
}
