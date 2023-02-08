import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Text("Profile"),
      ),
      body: Body(),
      //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}




class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          //facing problem to fecth the first name
          ProfileMenu(
            text:  " Hey User",
            icon: "assets/icons/User Icon.svg",
            press: () => {
            },
          ),
          // ProfileMenu(
          //   text: "Mobile No",
          //   icon: "assets/icons/Mail.svg",
          //   press: () {},
          // ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press:(){},
            //press: () =>  Navigator.of(context).push(MaterialPageRoute(builder:(context)=> Notifications()),),
          ),
          // ProfileMenu(
          //   text: "Settings",
          //   icon: "assets/icons/Settings.svg",
          //   press: () {},
          // ),
          // ProfileMenu(
          //   text: "Share",
          //   icon: "assets/icons/icons8-connect.svg",
          //   press: () {
          //     //Share.share("com.example.krishak_farma");
          //     //Share.share("")
          //   },
          // ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press:(){},
          ),
        ],
      ),
    );
  }
// Future<void> logout(BuildContext context) async
// {
//   await FirebaseAuth.instance.signOut();
//   Navigator.pushNamed(context, SignInScreen.routeName);
// }
}
class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: kPrimaryColor,
          padding: EdgeInsets.all(20),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Colors.teal[50],
        ),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              color: kPrimaryColor,
              width: 22,
            ),
            SizedBox(width: 20),
            Expanded(child: Text(text)),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}




class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          // CircleAvatar(
          //   backgroundImage: AssetImage("assets/images/Agri safe logo.png"),
          // ),

          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/User Icon.svg",

            ),
            iconSize: 40,
            onPressed: () {},

          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Colors.white),
                  ),
                  primary: Colors.white,
                  backgroundColor: Colors.teal[50],
                ),
                onPressed: () {},
                child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
