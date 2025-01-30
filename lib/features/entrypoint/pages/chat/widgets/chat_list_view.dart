import 'package:commerce/features/entrypoint/pages/chat/screens/chat_screen.dart';
import 'package:commerce/features/entrypoint/pages/chat/widgets/message_from.dart';
import 'package:flutter/material.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({
    super.key,
    required this.messages,
  });

  final List<Map<String, dynamic>> messages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: MessageFrom(
            isSender: messages[index]["isSender"],
            message: messages[index]["message"],
          ),
        );
      },
    );
  }
}
