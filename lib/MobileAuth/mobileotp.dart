import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget{
  @override
  State<OtpScreen> createState() {
    return OtpState();
  }
}

class OtpState extends State<OtpScreen>{
  String? otpCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(Icons.arrow_back),
                  ),
                ),

                const SizedBox(height: 20),
                const Text(
                  "Verification",
                  style: TextStyle(
                    fontSize: 22,
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
                const SizedBox(height: 20),
                Pinput(
                  length: 6,
                  showCursor: true,
                  defaultPinTheme: PinTheme(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.teal,
                      ),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onCompleted: (value) {
                    setState(() {
                      otpCode = value;
                    });
                  },
                ),
                const SizedBox(height: 25),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(height: 20,width: 100),
                    child: ElevatedButton(
                      child:
                      Text("Verify"),
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal[400],
                        textStyle: TextStyle(fontSize: 20),
                        shadowColor: Colors.black87,

                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Didn't receive any code?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
                const SizedBox(height: 15),
                InkWell(
                  child: const Text(
                    "Resend Otp",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
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
