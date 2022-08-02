import 'package:chat/widgets/chatPage.dart';
import 'package:flutter/material.dart';
import 'package:chat/models/TextCustums.dart';

//Le home Page est la page qui ne subit aucune modification dont hérite de statelesswidget
class homePage extends StatelessWidget{

  @override 
   Widget build(BuildContext context){
    return  Scaffold(
      //Affichage de la page de discussion
      body: chatPage(),
    //
      bottomNavigationBar: BottomNavigationBar(
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey.shade600,
      selectedLabelStyle:const TextStyle(fontWeight: FontWeight.w600),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      type: BottomNavigationBarType.fixed,
        items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label:"Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            label: "Channels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profile",
          ),
        ],
      ),
    );
   }
}