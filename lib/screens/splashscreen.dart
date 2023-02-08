
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthplus/MobileAuth/mobileauth.dart';

import '../size_config.dart';

class  SplashScreen extends StatefulWidget {

  static String routeName="/splash";
  const SplashScreen({Key? key}) : super(key: key);
  //static String routeName="/splash";
  //static String routeName="/splash";
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {


  void initState()
  {
    //checkIfLogin();
    super.initState();
    _navigatetohome();
  }
  _navigatetohome()async
  {
    await Future.delayed(Duration(milliseconds: 5000),(){});// await for 1.5 seconds


    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> MobileLogin()));

  }



  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Colors.white,

        body:
        Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            alignment: Alignment.center,
            child:
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/healthcare-loader.gif", height: 300, width: 300,alignment: Alignment.topCenter,),
                  SizedBox(height: 10,),
                  Text("Health Plus", style: TextStyle(
                    fontSize: 22,fontWeight: FontWeight.bold,
                    color: Colors.teal[500]
                  ),
                  ),
                  SizedBox(height: 10,),

                ],
              ),
            )
        )
    );
  }
}


