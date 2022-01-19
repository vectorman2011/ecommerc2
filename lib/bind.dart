

import 'package:e_commers/Getexcontroll.dart';
import 'package:get/get.dart';

class Binding extends Bindings{
@override
void dependencies(){
Get.lazyPut(() => AuthGetx());

}

  
}