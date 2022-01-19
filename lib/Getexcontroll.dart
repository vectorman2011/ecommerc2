
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';


class AuthGetx extends  GetxController{
  GoogleSignIn _googleSignIn=GoogleSignIn(scopes:['email']);
  FirebaseAuth _auth=FirebaseAuth.instance;
   Rxn<User> _firebaseUser = Rxn<User>();
   get user => _firebaseUser.value;
 
  String email,pass,name;
  AuthGetx({this.email="",this.name="",this.pass=""});
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
   // user.bindStream(_auth.authStateChanges());
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

void googelSignin()async{

   final GoogleSignInAccount? googleuser = await _googleSignIn.signIn();
 GoogleSignInAuthentication  googleSignInAuthentication = await  googleuser!.authentication;
   final AuthCredential authCredential= GoogleAuthProvider.credential(
  idToken:googleSignInAuthentication.idToken ,
 accessToken: googleSignInAuthentication.accessToken,
  );
 await _auth.signInWithCredential( authCredential);
}
}