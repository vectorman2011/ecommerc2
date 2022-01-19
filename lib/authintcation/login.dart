

import 'package:e_commers/Const/Custem_text.dart';
import 'package:e_commers/Const/cflatsocial.dart';
import 'package:e_commers/Const/const.dart';
import 'package:e_commers/Const/flatbattum.dart';
import 'package:e_commers/Const/forms.dart';
import 'package:e_commers/Getexcontroll.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class Login  extends GetWidget<AuthGetx> {
  
 
 
  
final GlobalKey <FormState> _formstate= GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
  elevation: 0.0,
  backgroundColor:Colors.white,
),
body: Padding(
  padding: const EdgeInsets.all(8.0),
  child:
  Form(

key: _formstate,
    child: Column(children: <Widget> [
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
    TText(text: "Welcome,",fontSize: 30, ),
   TText(text: "Sing up",fontSize: 18,color:myColor,),
  ],),
  SizedBox(height:2,),
 TText(text: "Sing in to continue",fontSize: 14,color: Colors.grey,),
  SizedBox(height:30,),
   TText(text:"Email",fontSize: 20,color: Colors.black,alignment: Alignment.center,),
   SizedBox(height: 20,),
  FForm(text:"e-mail",hint:"Email"),
   SizedBox(height: 20,),
   TText(text:"Password",fontSize: 20,color: Colors.black,alignment: Alignment.center,),
    SizedBox(height: 20,),
  FForm(text:"p-word",hint:"Password"),
  SizedBox(height: 10,),
   TText(text:"Forgot Password ?",fontSize: 14,color: Colors.black,alignment: Alignment.topRight,),
   SizedBox(height: 5,),
   Flat(text: "Sing in",onPerssed: (){
  controller.googelSignin(); 
   //_formstate.currentState.save();
  //  if(_formstate.currentState.validate()){
  //    controller.signinWithemail();
  //  }
    
   },
   
   
  
   ),
   SizedBox(height: 10,),
   TText(text: "Sing in with",alignment: Alignment.center,fontSize: 14,color: myColor,),
    SizedBox(height: 10,),
   Flat_C(text: 'Sing in with facbook',imagename: "assets/images/2.png",),
   SizedBox(height: 10,),
   Flat_C(text: 'Sing in with google',imagename: "assets/images/1.png",),
    SizedBox(height: 20,),
  
  Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
          Container(
      
      alignment: Alignment.bottomCenter,
      
        width:150,
        height: 80,
      
        decoration:BoxDecoration(
         borderRadius: BorderRadius.only(
          topRight: Radius.circular(60),
          topLeft: Radius.circular(60),
          
        ),
      color: Colors.black
      
      
      
        ),
      
      child: TText(text: "We wish you a bast life",color:Colors.white,alignment: Alignment.center,fontSize: 10,)
      
      ),
    ],
  )
  
    ],),
  ),
),

    );
  }
}