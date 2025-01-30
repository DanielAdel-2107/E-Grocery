import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/features/entrypoint/pages/chat/widgets/chat_text_field.dart';
import 'package:flutter/material.dart';

class SendMessage extends StatelessWidget {
  const SendMessage({
    super.key,
    required this.messageController,
    required this.onPressed,
  });

  final TextEditingController messageController;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: const BoxDecoration(
        color: CoreThemeColor.primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: ChatTextField(
              controller: messageController,
            ),
          ),
          IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.send,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
