import 'dart:developer';

import 'package:commerce/core/config/config.dart';
import 'package:commerce/core/database/cache/cache_helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ChatProvider with ChangeNotifier {
  final Dio dio;
  bool isLoaded = false;
  List<Map<String, dynamic>> messages = [];
  bool sendingMessage = false;
  final messageController = TextEditingController();
  ChatProvider({required this.dio}) {
    loadChat();
  }

  loadChat() async {
    final data = await store<CacheHelper>().getData(key: "messages");
    if (data is List) {
      messages = List<Map<String, dynamic>>.from(data);
    } else {
      messages = [];
    }
    log(messages.toString());
    notifyListeners();
  }

  sendMessage() async {
    if (messageController.text.isNotEmpty) {
      sendingMessage = true;
      notifyListeners();
      messages.add(
        {
          "message": messageController.text,
          "isSender": true,
        },
      );
      final response = await dio.post(
          "https://web-production-bce0.up.railway.app/chat",
          data: {"message": messageController.text});
      messages.add(
        {
          "message": response.data["response"],
          "isSender": false,
        },
      );
      sendingMessage = false;
      notifyListeners();
      messageController.clear();
      log(messages.toString());
      await store<CacheHelper>().clearData(key: "messages");
      await store<CacheHelper>().saveData(key: "messages", value: messages);
    }
  }

  newChat() async {
    messages = [];
    await store<CacheHelper>().clearData(key: "messages");

    notifyListeners();
  }
}
