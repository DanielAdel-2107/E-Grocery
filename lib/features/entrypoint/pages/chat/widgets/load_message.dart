import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:flutter/material.dart';

class LoadMessages extends StatelessWidget {
  const LoadMessages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(CoreImages.chatbot),
        ),
        BubbleSpecialThree(
          text: "Wait for response ...",
          color: CoreThemeColor.primary,
          tail: false,
          isSender: true,
          textStyle: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ],
    );
  }
}
