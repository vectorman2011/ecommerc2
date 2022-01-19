import 'package:e_commers/Const/const.dart';
import 'package:flutter/material.dart';

import 'Custem_text.dart';

class Flat extends StatelessWidget {
 
  final String text;
  final Function()? onPerssed;
  Flat({this.text="", this.onPerssed});
  

  @override
  Widget build(BuildContext context) {
    return  FlatButton(
   padding: EdgeInsets.all(8),
   color: myColor,
   onPressed: onPerssed, 
 shape: RoundedRectangleBorder(
   borderRadius:BorderRadius.circular(20)
 ),child:TText(text:text,alignment: Alignment.center,));
  }
}