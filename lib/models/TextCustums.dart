import 'package:flutter/material.dart';

/* 
cette class permet d'avoir  de text Styler
*/
class TextCustum extends Text{
  TextCustum(String data,
  {Key?key,
   color:Colors.black,
   textAlign:TextAlign.left,
   fontWeight:FontWeight.normal, 
   factory:1.5,fontsize:10.0}):

  super(key:key,data,
  textAlign: textAlign,
  style: TextStyle(
    color: color, 
    fontSize: fontsize, 
    fontWeight: fontWeight 
  )
  );
}