




//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:healthplus/MobileAuth/mobileauth.dart';
import 'package:healthplus/Statistics/statistics.dart';
import 'package:healthplus/loginsucessscreen/login_sucess_screen.dart';
import 'package:healthplus/profile/profile_screen.dart';
import 'package:healthplus/screens/splashscreen.dart';
import 'package:healthplus/sign_in/sign_in_screen.dart';

import 'package:healthplus/sign_up/Manufacture_registration.dart';
import 'package:healthplus/sign_up/sign_up_screen.dart';

import 'BlockChain/ExpiryCheck.dart';
import 'BlockChain/manufacturemedicine.dart';
import 'package:healthplus/sign_up/sign_up_screen.dart';
import 'forgot_password/forgot_password_screen.dart';
import 'home/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName:(context)=>SplashScreen(),

  SignUpScreenM.routeName:(contxt)=>SignUpScreenM(),
  SignUpScreenMB.routeName:(context)=>SignUpScreenMB(),
  ExpiryCheck.routeName:(context)=>ExpiryCheck(),
  Statistics.routeName:(context)=>Statistics(),
  MobileLogin.routeName:(context)=>MobileLogin(),
  ProfileScreen.routeName:(context)=>ProfileScreen(),
  LoginSuccessScreen.routeName:(context)=>LoginSuccessScreen(),
  'home':(context)=>HomeScreen(),
  'login_sucess':(context)=>LoginSuccessScreen(),
  SignInScreen.routeName:(context)=>SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),



};
