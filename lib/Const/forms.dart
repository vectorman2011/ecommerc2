


import 'package:flutter/material.dart';
import 'package:get/get.dart';


class FForm extends StatelessWidget {
 
final String text;
final String hint;
dynamic Function(String?)? onSaved;
dynamic Function(String?)? va;

FForm({this.text="",this.hint="",this.onSaved, this.va});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[

          Center(
  child: Column(
  
  children: <Widget>[
 
    TextFormField(
  onSaved:onSaved,
  validator:null ,
      decoration: InputDecoration(
  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
  label: Text(text),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey),
        border:
     OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
  
    ),
  
  
  ],
  
  
  
  ),
)
        ],
      ),
      
    );
  }
}