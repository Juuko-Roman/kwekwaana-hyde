import 'package:flutter/material.dart';

class ChatMessage {
  String senderName;
  String senderImageURL;
  String messageContent;
  String time;
  ChatMessage({
    required this.messageContent,
    required this.senderName,
    required this.senderImageURL,
    required this.time,
  });
}
