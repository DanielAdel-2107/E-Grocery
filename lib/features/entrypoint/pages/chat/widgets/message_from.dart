import 'package:commerce/features/entrypoint/pages/chat/screens/chat_screen.dart';
import 'package:commerce/features/entrypoint/pages/chat/widgets/chatbot_message.dart';
import 'package:commerce/features/entrypoint/pages/chat/widgets/user_message.dart';
import 'package:flutter/material.dart';

class MessageFrom extends StatelessWidget {
  const MessageFrom({
    super.key,
    required this.isSender,
    required this.message,
  });
  final bool isSender;
  final String message;
  @override
  Widget build(BuildContext context) {
    return isSender
        ? UserMeaasge(
            message: message,
          )
        : ChatBotMessage(
            message: message,
          );
  }
}
