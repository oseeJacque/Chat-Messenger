import 'package:flutter/material.dart';

/*
Cette classe implement le model d'un message 
*/
class ChatMessage{
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}