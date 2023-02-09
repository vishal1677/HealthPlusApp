import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthplus/MobileAuth/mobileauth.dart';
import 'package:healthplus/theme.dart';
class OtpScreen extends StatefulWidget{
  @override
  State<OtpScreen> createState() {
    return OtpState();
  }
}

class OtpState extends State<OtpScreen>{
  String? otpCode;
  var p1=TextEditingController();
  var p2=TextEditingController();
  var p3=TextEditingController();
  var p4=TextEditingController();
  var p5=TextEditingController();
  var p6=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        leading: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MobileLogin()));
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            )
        ),
      ),
        body:  Center(
          child: Column(
            children: [
              Container(height: 100,),
              const Text(
                "Verification",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              Container(height: 15,),
              const SizedBox(height: 15),
                const Text(
                  "Enter the OTP send to your phone number",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50),
              Container(
                height: 100,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          style: TextStyle(fontSize: 15,color: Colors.black87,),
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          controller: p1,
                          onChanged: (p1){
                            if(p1.length==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Colors.teal,
                                  width: 2,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Colors.black87,
                                  width: 2,
                                ),
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 20,width: 1,),
                      Container(
                        width: 50,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          style: TextStyle(fontSize: 15,color: Colors.black87,),
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          controller: p2,
                          onChanged: (p2){
                            if(p2.length==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Colors.teal,
                                  width: 2,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Colors.black87,
                                  width: 2,
                                ),
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 20,width: 1,),
                      Container(
                        width: 50,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          style: TextStyle(fontSize: 15,color: Colors.black87,),
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          controller: p3,
                          onChanged: (p3){
                            if(p3.length==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Colors.teal,
                                  width: 2,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Colors.black87,
                                  width: 2,
                                ),
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 20,width: 1,),
                      Container(
                        width: 50,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          style: TextStyle(fontSize: 15,color: Colors.black87,),
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          controller: p4,
                          onChanged: (p4){
                            if(p4.length==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Colors.teal,
                                  width: 2,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Colors.black87,
                                  width: 2,
                                ),
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 20,width: 1,),
                      Container(
                        width: 50,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          style: TextStyle(fontSize: 15,color: Colors.black87,),
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          controller: p5,
                          onChanged: (p5){
                            if(p5.length==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Colors.teal,
                                  width: 2,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Colors.black87,
                                  width: 2,
                                ),
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 20,width: 1,),
                      Container(
                        width: 50,
                        height: 60,
                        decoration: BoxDecoration(
                        ),
                        child: TextField(
                          style: TextStyle(fontSize: 15,color: Colors.black87,),
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          controller: p6,
                          onChanged: (p6){
                            if(p6.length==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Colors.teal,
                                  width: 2,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Colors.black87,
                                  width: 2,
                                ),
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
              Container(height: 20,),
              InkWell(onTap: () {
                  String val=p1.text.toString()+p2.text.toString()+p3.text.toString()+p4.text.toString()+p5.text.toString()+p6.text.toString();
                  int p=int.parse(val);
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>MobileLogin()));
                  setState(() {
                    print('$p');
                  });
              }, child: Container(
                width: 100,
                height: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.teal,
                  ),
                child: Center(child: Text("Verify",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold,),))),
              ),
            ],
          ),
        ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
//
// import 'package:pinput/pinput.dart';
//
// class OtpScreen extends StatefulWidget{
//   @override
//   State<OtpScreen> createState() {
//     return OtpState();
//   }
// }
//
// class OtpState extends State<OtpScreen>{
//   String? otpCode;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         elevation: 0,
//         leading: IconButton(
//             onPressed: (){},
//             icon: Icon(
//               Icons.arrow_back_outlined,
//               color: Colors.black,
//             )
//         ),
//       ),
//       body: SafeArea(
//         child: Center(
//           child: Padding(
//             padding:
//             const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
//             child: Column(
//               children: [
//                 Align(
//                   alignment: Alignment.topLeft,
//                   child: GestureDetector(
//                     onTap: () => Navigator.of(context).pop(),
//                     child: const Icon(Icons.arrow_back),
//                   ),
//                 ),
//
//                 const SizedBox(height: 20),
//                 const Text(
//                   "Verification",
//                   style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 const Text(
//                   "Enter the OTP send to your phone number",
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.black38,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(height: 20),
//                 Pinput(
//                   length: 6,
//                   showCursor: true,
//                   defaultPinTheme: PinTheme(
//                     width: 60,
//                     height: 60,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       border: Border.all(
//                         color: Colors.teal,
//                       ),
//                     ),
//                     textStyle: const TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   onCompleted: (value) {
//                     setState(() {
//                       otpCode = value;
//                     });
//                   },
//                 ),
//                 const SizedBox(height: 25),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   height: 50,
//                   child: ConstrainedBox(
//                     constraints: BoxConstraints.tightFor(height: 20,width: 100),
//                     child: ElevatedButton(
//                       child:
//                       Text("Verify"),
//                       onPressed: () {
//
//                       },
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.teal[400],
//                         textStyle: TextStyle(fontSize: 20),
//                         shadowColor: Colors.black87,
//
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 const Text(
//                   "Didn't receive any code?",
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black38,
//                   ),
//                 ),
//                 const SizedBox(height: 15),
//                 InkWell(
//                   child: const Text(
//                     "Resend Otp",
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.teal,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

