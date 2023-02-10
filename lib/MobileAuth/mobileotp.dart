import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:healthplus/MobileAuth/mobileauth.dart';
import 'package:healthplus/home/home_screen.dart';
import 'package:healthplus/profile/profile_screen.dart';
import 'package:hive/hive.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget{
  @override
  State<OtpScreen> createState() {
    return OtpState();
  }
}

class OtpState extends State<OtpScreen>{
  String otpCode="";
  String Checkotp="";
  final FirebaseAuth auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    var p1=TextEditingController();
    var p2=TextEditingController();
    var p3=TextEditingController();
    var p4=TextEditingController();
    var p5=TextEditingController();
    var p6=TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: Column(
              children: [

                const SizedBox(height: 80),
                const Text(
                  "Verification",
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Enter the OTP send to your phone number",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
              Container(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 45,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 15,color: Colors.black87,),
                      controller: p1,
                      maxLength: 1,
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
                          ),
                      ),
                    ),
                  ),
                  SizedBox(width: 1,height: 50,),
                  Container(
                    width: 45,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 15,color: Colors.black87,),
                      controller: p2,
                      maxLength: 1,
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
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 1,height: 50,),
                  Container(
                    width: 45,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 15,color: Colors.black87,),
                      controller: p3,
                      maxLength: 1,
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
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 1,height: 50,),
                  Container(
                    width: 45,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 15,color: Colors.black87,),
                      controller: p4,
                      maxLength: 1,
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
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 1,height: 50,),
                  Container(
                    width: 45,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 15,color: Colors.black87,),
                      controller: p5,
                      maxLength: 1,
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
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 1,height: 50,),
                  Container(
                    width: 45,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 15,color: Colors.black87,),
                      controller: p6,
                      maxLength: 1,
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
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
                const SizedBox(height: 45),
                SizedBox(height: 15,),
                Container(
                  width: 300,
                  height: 40,
                  color: Colors.teal,
                  child: Center(
                    child: InkWell(
                      onTap: () async{
                        try{
                          otpCode=p1.text.toString()+p2.text.toString()+p3.text.toString()+p4.text.toString()+p5.text.toString()+p6.text.toString();
                          Checkotp=MobileLogin.verify;
                          PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: Checkotp, smsCode: otpCode);

                          // Sign the user in (or link) with the credential
                          await auth.signInWithCredential(credential);
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomeScreen()), (route)=>false);
                        }
                        catch(e){
                          print('wrong otp');
                          print('$otpCode  ($Checkotp)');
                        }
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                        // setState(() {
                        //   if(){
                        //     Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                        //   }
                        // });
                      },
                      child: const Text(
                        "Verify",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:phoneauth_firebase/provider/auth_provider.dart';
// import 'package:phoneauth_firebase/screens/home_screen.dart';
// import 'package:phoneauth_firebase/screens/user_information_screen.dart';
// import 'package:phoneauth_firebase/utils/utils.dart';
// import 'package:phoneauth_firebase/widgets/custom_button.dart';
// import 'package:pinput/pinput.dart';
// import 'package:provider/provider.dart';
//
// class OtpScreen extends StatefulWidget {
//   final String verificationId;
//   const OtpScreen({super.key, required this.verificationId});
//
//   @override
//   State<OtpScreen> createState() => _OtpScreenState();
// }
//
// class _OtpScreenState extends State<OtpScreen> {
//   String? otpCode;
//
//   @override
//   Widget build(BuildContext context) {
//     final isLoading =
//         Provider.of<AuthProvider>(context, listen: true).isLoading;
//     return Scaffold(
//       body: SafeArea(
//         child: isLoading == true
//             ? const Center(
//           child: CircularProgressIndicator(
//             color: Colors.purple,
//           ),
//         )
//             : Center(
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
//                 Container(
//                   width: 200,
//                   height: 200,
//                   padding: const EdgeInsets.all(20.0),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.purple.shade50,
//                   ),
//                   child: Image.asset(
//                     "assets/image2.png",
//                   ),
//                 ),
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
//                         color: Colors.purple.shade200,
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
//                   child: CustomButton(
//                     text: "Verify",
//                     onPressed: () {
//                       if (otpCode != null) {
//                         verifyOtp(context, otpCode!);
//                       } else {
//                         showSnackBar(context, "Enter 6-Digit code");
//                       }
//                     },
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
//                 const Text(
//                   "Resend New Code",
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.purple,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   // verify otp
//   void verifyOtp(BuildContext context, String userOtp) {
//     final ap = Provider.of<AuthProvider>(context, listen: false);
//     ap.verifyOtp(
//       context: context,
//       verificationId: widget.verificationId,
//       userOtp: userOtp,
//       onSuccess: () {
//         // checking whether user exists in the db
//         ap.checkExistingUser().then(
//               (value) async {
//             if (value == true) {
//               // user exists in our app
//               ap.getDataFromFirestore().then(
//                     (value) => ap.saveUserDataToSP().then(
//                       (value) => ap.setSignIn().then(
//                         (value) => Navigator.pushAndRemoveUntil(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const HomeScreen(),
//                         ),
//                             (route) => false),
//                   ),
//                 ),
//               );
//             } else {
//               // new user
//               Navigator.pushAndRemoveUntil(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const UserInfromationScreen()),
//                       (route) => false);
//             }
//           },
//         );
//       },
//     );
//   }
// }
