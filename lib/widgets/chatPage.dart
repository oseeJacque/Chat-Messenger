import 'package:chat/models/TextCustums.dart';
import 'package:flutter/material.dart';
import 'package:chat/models/chatUsersModel.dart';

import 'conversationList.dart';

class chatPage extends StatefulWidget {
  @override
  _chatPageState createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  @override

  //Déclaration de la listes des emetteurs du chat en suivant le models chatUserModel
  late List<ChatUsers> PersonneListe = [
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL:
            "lib/image/personne-physique-ou-morale-ce-quil-vous-faut-savoir-13012022020600081226.jpg",
        time: "Now"),
    ChatUsers(
        name: "Glady's Murphy",
        messageText: "That's Great",
        imageURL: "lib/image/personne1.jpg",
        time: "Yesterday"),
    ChatUsers(
        name: "Jorge Henry",
        messageText: "Hey where are you?",
        imageURL: "lib/image/personneChampiion.jpg",
        time: "31 Mar"),
    ChatUsers(
        name: "Philip Diamond",
        messageText: "Busy! Call me in 20 mins",
        imageURL: "lib/image/personneDiamond.jpeg",
        time: "28 Mar"),
    ChatUsers(
        name: "Fally Ipupa",
        messageText: "Thankyou, It's awesome",
        imageURL: "lib/image/personneFally.jpeg",
        time: "23 Mar"),
    ChatUsers(
        name: "Jacob Pena",
        messageText: "will update you in evening",
        imageURL: "lib/image/personneLunnette.jpg",
        time: "17 Mar"),
    ChatUsers(
        name: "Andrey Nikanor",
        messageText: "Can you please share the file?",
        imageURL: "lib/image/personneNikanor.jpeg",
        time: "24 Feb"),
    ChatUsers(
        name: "John Wick",
        messageText: "How are you?",
        imageURL: "lib/image/personneSoleil.jpg",
        time: "18 Feb"),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      //on a utiliser Le SingleChildScrollView  parce qu'il s'agit d'une seule boîte qui sera visible et défilable
      physics: const BouncingScrollPhysics(), //utiliser pour le defilement physique

      child: Column(
        //Cette column contient tout le contenu du SingleChildScrollView
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SafeArea(
            child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextCustum(
                  "Conversation",
                  fontsize: 23.0,
                  fontWeight: FontWeight.bold,
                  factory: 15.0,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 8, right: 8, top: 2, bottom: 2),
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.pink[50],
                  ),
                  child: Row(
                    children: <Widget>[
                      const Icon(
                        Icons.add,
                        color: Colors.pink,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      TextCustum("Add New",
                          fontsize: 14.0, fontWeight: FontWeight.bold)
                    ],
                  ),
                ),
              ],
            ),
          )),

//Mettons en place la bar de recherche en utilisant un padding dont le fils est un textField
          Padding(
            padding: EdgeInsets.only(top: 16, left: 16, right: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                hintStyle: TextStyle(color: Colors.grey.shade600),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.shade600,
                  size: 20,
                ),
                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: EdgeInsets.all(8),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey.shade100)),
              ),
            ),
          ),
          ListView.builder(
            itemCount: PersonneListe.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 16),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ConversationList(
                name: PersonneListe[index].name,
                messageText: PersonneListe[index].messageText,
                imageUrl: PersonneListe[index].imageURL,
                time: PersonneListe[index].time,
                isMessageRead: (index == 0 || index == 3) ? true : false,
              );
            },
          ),
        ],
      ),
    ));
  }
}
