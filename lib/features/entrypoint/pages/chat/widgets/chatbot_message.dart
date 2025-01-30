import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:flutter/material.dart';

class ChatBotMessage extends StatelessWidget {
  const ChatBotMessage({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage(CoreImages.chatbot),
        ),
        BubbleSpecialThree(
          text: message,
          color: CoreThemeColor.primary,
          tail: true,
          isSender: false,
          textStyle: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ],
    );
  }
}
