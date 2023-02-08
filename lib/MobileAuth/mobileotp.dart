// import 'package:flutter/material.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
//
//
//
//
//
//
// class MobileOTP extends StatefulWidget {
//   const MobileOTP({Key? key}) : super(key: key);
//
//   @override
//   State<MobileOTP> createState() => _MobileOTPState();
// }
//
// class _MobileOTPState extends State<MobileOTP> {
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     // TODO: implement build
//     // final defaultPinTheme = PinTheme(
//     //   width: 56,
//     //   height: 56,
//     //   textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
//     //   decoration: BoxDecoration(
//     //     border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
//     //     borderRadius: BorderRadius.circular(20),
//     //   ),
//     // );
//
//
//     // final focusedPinTheme = defaultPinTheme.copyDecorationWith(
//     //   border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
//     //   borderRadius: BorderRadius.circular(8),
//     // );
//
//     // final submittedPinTheme = defaultPinTheme.copyWith(
//     //   decoration: defaultPinTheme.decoration?.copyWith(
//     //     color: Color.fromRGBO(234, 239, 243, 1),
//     //   ),
//     // );
//
//
//
//
//     return Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           title: const Text("Phone Verification"),
//           backgroundColor: Colors.deepPurple[400],
//         ),
//         body:
//         Container(
//             margin: EdgeInsets.only(left: 25, right: 25),
//             alignment: Alignment.center,
//             child:
//             SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(height: 10,),
//                   Text("Phone Verification", style: TextStyle(
//                     fontSize: 22,fontWeight: FontWeight.bold,
//                   ),
//                   ),
//                   SizedBox(height: 10,),
//                   Text("Please Enter the OTP",
//                     style: TextStyle(
//                       fontSize: 16,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//
//                   SizedBox(height: 40,),
//
//                   // Pinput(
//                   //   length: 6,
//                   //
//                   //
//                   //   pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
//                   //   showCursor: true,
//                   // ),
//                   PinCodeTextField(
//                     length: 6,
//                     obscureText: false,
//                     animationType: AnimationType.fade,
//                     pinTheme: PinTheme(
//                       shape: PinCodeFieldShape.box,
//                       borderRadius: BorderRadius.circular(5),
//                       fieldHeight: 50,
//                       fieldWidth: 40,
//                       activeFillColor: Colors.white,
//                     ),
//                     animationDuration: Duration(milliseconds: 300),
//                     backgroundColor: Colors.blue.shade50,
//                     enableActiveFill: true,
//                     //errorAnimationController: errorController,
//                     //controller: textEditingController,
//                     onCompleted: (v) {
//                       print("Completed");
//                     },
//                     onChanged: (value) {
//                       print(value);
//                       setState(() {
//                         //currentText = value;
//                       });
//                     },
//                     beforeTextPaste: (text) {
//                       print("Allowing to paste $text");
//                       //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
//                       //but you can show anything you want here, like your pop up saying wrong paste format or etc
//                       return true;
//                     }, appContext: context,
//                   ),
//
//                   SizedBox(height: 40,),
//                   SizedBox(
//                     height: 45,
//                     width: double.infinity,
//                     child: ElevatedButton(onPressed: (){
//
//                     },
//                       child: Text("Continue"),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.deepPurple[400],
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10)
//                           )
//                       ),
//
//
//                     ),
//                   ),
//                   TextButton(onPressed: (){},
//                     child: Text("Resend OTP ",
//                       style: TextStyle(color: Colors.deepPurple[400]),
//                     ),
//
//                   )
//                 ],
//               ),
//             )
//         )
//     );
//
//   }
// }