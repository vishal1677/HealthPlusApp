




//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:healthplus/MobileAuth/mobileauth.dart';
import 'package:healthplus/profile/profile_screen.dart';
import 'package:healthplus/screens/splashscreen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName:(context)=>SplashScreen(),
  MobileLogin.routeName:(context)=>MobileLogin(),
  ProfileScreen.routeName:(context)=>ProfileScreen(),

  //SignInScreen.routeName:(context)=>SignInScreen(),



};
