import 'package:flutter/material.dart';
/* 
Cette classe implement l'architecture d'un emetteur de message dans le chat
*/

class ChatUsers{
  late String name;
  late String messageText;
  late String imageURL;
  late String time;
  ChatUsers({required this.name,required this.messageText,required this.imageURL,required this.time});
}