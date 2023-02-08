
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:overlay_support/overlay_support.dart';
import 'package:healthplus/routes.dart';
import 'package:healthplus/screens/splashscreen.dart';

import 'firebase_options.dart';





Future<void> main() async
{










  runApp(MyApp());




}

class MyApp extends StatelessWidget
{

  MyApp({Key? key}) : super(key: key);
  //await Firebase.initializeApp();

  // final storage=new FlutterSecureStorage();
  // Future<bool> checkLoginStatus() async{
  //   String?value =await storage.read(key: "uid");
  //   if(value==null){
  //     return false;
  //   }
  //   return true;// dash boars
  //
  // }

  @override
  Widget build(BuildContext context) {
    //Get.lazyPut(()=>DataClass());

    // TODO: implement build

    return  OverlaySupport(
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
       initialRoute: SplashScreen.routeName,

        routes: routes,






      ),
    );
  }

}











