import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/features/entrypoint/pages/chat/screens/chat_screen.dart';
import 'package:commerce/features/entrypoint/pages/chat/widgets/chat_list_view.dart';
import 'package:commerce/features/entrypoint/pages/chat/widgets/load_message.dart';
import 'package:commerce/features/entrypoint/pages/chat/widgets/send_message.dart';
import 'package:flutter/material.dart';

class ChatScreenBody extends StatelessWidget {
  const ChatScreenBody({
    super.key,
    required this.messages,
    required this.messageController,
    this.onPressed,
    required this.sendingMessage,
  });
  final List<Map<String, dynamic>> messages;
  final TextEditingController messageController;
  final Function()? onPressed;

  final bool sendingMessage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: messages.isEmpty
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    Image.asset(CoreImages.chatbot),
                    const Text(
                      "Chat With Us",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: CoreThemeColor.primary),
                    )
                  ],
                )
              : ChatListView(messages: messages),
        ),
        sendingMessage ? const LoadMessages() : const SizedBox(),
        SendMessage(messageController: messageController, onPressed: onPressed)
      ],
    );
  }
}
