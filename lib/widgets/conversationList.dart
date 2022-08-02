import 'package:flutter/material.dart';
import 'package:chat/widgets/chatDetailPage.dart';
/*
 Conversation list est la class qui presente l'architecture de presentatoion de amis du chat
 -La classe contient les attributs identiques à la charte UserModels
*/

class ConversationList extends StatefulWidget{

  //Declaration des attributs de la classe
  String name;
  String messageText;
  String imageUrl;
  String time;
  bool isMessageRead;

  //COnstructeur de la class//COnstructeur de la class
  ConversationList({required this.name,required this.messageText,required this.imageUrl,required this.time,required this.isMessageRead});

  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    //On return ici un detecteur de geste dans laquelle est implémenter la présentation d'un emetteur de la charte
    return GestureDetector(
      onTap: (){
        /*
        Lorsqu'on clique sur un emetteur dans la liste de conversation on est rediriger vers
         la page detail conversation
        */
        Navigator.push(context, MaterialPageRoute(builder:(context)=>chatDetailPage(widget.imageUrl)));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  //Profil de l'emetteur 
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(widget.imageUrl, 
                    width: 50, 
                    height: 50, 
                    fit: BoxFit.cover,
                    ),                  
                  ),
                  const SizedBox(width: 16,),
                  //Le nom, prenom message envoyé et emps d'envoi de l'emetteur de l'individu
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(widget.name, style: TextStyle(fontSize: 16),),
                          SizedBox(height: 6,),
                          Text(widget.messageText,style: TextStyle(fontSize: 13,color: Colors.grey.shade600, fontWeight: widget.isMessageRead?FontWeight.bold:FontWeight.normal),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(widget.time,style: TextStyle(fontSize: 12,fontWeight: widget.isMessageRead?FontWeight.bold:FontWeight.normal),),
          ],
        ),
      ),
    );
  }
}