




//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:healthplus/MobileAuth/mobileauth.dart';
import 'package:healthplus/loginsucessscreen/login_sucess_screen.dart';
import 'package:healthplus/profile/profile_screen.dart';
import 'package:healthplus/screens/splashscreen.dart';
import 'package:healthplus/sign_in/sign_in_screen.dart';

import 'home/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName:(context)=>SplashScreen(),
  MobileLogin.routeName:(context)=>MobileLogin(),
  ProfileScreen.routeName:(context)=>ProfileScreen(),
  LoginSuccessScreen.routeName:(context)=>LoginSuccessScreen(),
  'home':(context)=>HomeScreen(),
  SignInScreen.routeName:(context)=>SignInScreen(),



};
