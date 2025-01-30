import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/features/entrypoint/pages/chat/provider/chat_provider.dart';
import 'package:commerce/features/entrypoint/pages/chat/widgets/chat_screen_body.dart';
import 'package:commerce/features/entrypoint/pages/chat/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ChatProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          appBar: CustomAppBar(
            onPressed: () {
              provider.newChat();
            },
          ),
          body: ChatScreenBody(
            sendingMessage: provider.sendingMessage,
            messageController: provider.messageController,
            messages: provider.messages,
            onPressed: () {
              provider.sendMessage();
            },
          ),
        );
      },
    );
  }
}
