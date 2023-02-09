import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

import 'package:healthplus/home/home_screen.dart';

import 'mobileotp.dart';

class MobileLogin extends StatefulWidget {
  static String routeName="/mobileauth";
  const MobileLogin({Key? key}) : super(key: key);

  @override
  State<MobileLogin> createState() => _MobileLoginState();
}

class _MobileLoginState extends State<MobileLogin> {

  TextEditingController countrycode = TextEditingController();
  TextEditingController mobileNo = TextEditingController();


  @override
  void initState() {
    countrycode.text = "+91";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var PhoneNo;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: const Text("Phone Verification")),
          elevation: 20,
          backgroundColor: Colors.teal[500],
          actions: [
            IconButton(
                onPressed: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>adminLogin()));
                },
                icon: Icon(
                  Icons.admin_panel_settings_rounded,
                  color: Colors.indigo[700],
                )
            ),
          ],
        ),
        body:
        Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            alignment: Alignment.center,
            child:
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/enter-password.gif", height: 300, width: 300,alignment: Alignment.topCenter,),
                  SizedBox(height: 10,),
                  Text("Phone Verification", style: TextStyle(
                    fontSize: 22,fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(height: 10,),
                  Text("You need to register before getting started",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20,),

                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.teal),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        SizedBox(
                          width: 40,
                          child: TextField(
                            controller: countrycode,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(border: InputBorder.none, hintText: "+91"),
                          ),
                        ),

                        Text(
                          "|",
                          style: TextStyle(
                              fontSize: 40, color: Colors.teal[500]
                          ),
                        ),

                        Expanded(
                            child:
                            TextField(
                              controller: mobileNo,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10)
                              ],
                              onChanged: (value){

                              },
                              decoration: InputDecoration(border: InputBorder.none,
                                hintText: "Mobile Number",
                              ),
                              keyboardType: TextInputType.number,

                            )
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>MobileOTP()));
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                    },
                      child: Text("Send the OTP "),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.teal[500],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),


                    ),
                  )
                ],
              ),
            )
        )
    );
  }
}