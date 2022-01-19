



import 'package:e_commers/bind.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'authintcation/login.dart';

main()async {                                                             
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp
    
    (
      initialBinding: Binding(),
      
      
      home:Scaffold(body: Login(),)
    
    );
  }
}