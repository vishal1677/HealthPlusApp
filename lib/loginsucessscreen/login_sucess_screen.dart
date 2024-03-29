import 'package:flutter/material.dart';

import '../components/default_button.dart';
import '../size_config.dart';



class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,

        body: Body()
    );
  }
}
// import 'package:flutter/material.dart';
//
// import 'components/body.dart';
//
// class LoginSuccessScreen extends StatelessWidget {
//   static String routeName = "/login_success";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: SizedBox(),
//         title: Text("Login Success"),
//       ),
//       body: Body(),
//     );
//   }
// }


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Center(


      child: Column(


        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.2),
          SingleChildScrollView(
            child: Image.asset(
              "assets/images/welcome1.jpg",
              height: SizeConfig.screenHeight * 0.4, //40%
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Text(
            "Login In Success",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: "Back to home",
              press: () {
                //Navigator.pushNamed(context, HomeScreen.routeName);
                Navigator.pushNamedAndRemoveUntil(context,"home", (route) => false);
              },
            ),
          ),
          Spacer(),
          // SizedBox(
          //   width: SizeConfig.screenWidth * 0.6,
          //   child: DefaultButton(
          //     text: "Log Out ",
          //     press: () {
          //      // Navigator.pushNamed(context, HomeScreen.routeName);
          //       FirebaseAuth.instance.signOut();
          //     },
          //   ),
          // ),
          // Spacer(),
        ],
      ),
    );
  }
}
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../../../components/default_button.dart';
// import '../../../size_config.dart';
// import '../../home/home_screen.dart';
//
// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(height: SizeConfig.screenHeight * 0.04),
//         Image.asset(
//           "assets/images/success.png",
//           height: SizeConfig.screenHeight * 0.4, //40%
//         ),
//         SizedBox(height: SizeConfig.screenHeight * 0.08),
//         Text(
//           "Login Success",
//           style: TextStyle(
//             fontSize: getProportionateScreenWidth(30),
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),
//         Spacer(),
//         SizedBox(
//           width: SizeConfig.screenWidth * 0.6,
//           child: DefaultButton(
//             text: "Back to home",
//             press: () {
//               Navigator.pushNamed(context, HomeScreen.routeName);
//             },
//           ),
//         ),
//         Spacer(),
//       ],
//     );
//   }
// }