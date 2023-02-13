

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthplus/home/components/categories.dart';

import '../components/custom_navigation_bar.dart';
import '../enums.dart';
import '../size_config.dart';
import 'components/addbanner.dart';
import 'components/home_header.dart';
import 'components/middleparts.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(child: Body()),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home), ////////////
    );
  }
}
class Body extends StatelessWidget {
  User? user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(

        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            DiscountBanner(),
             Categories(),
            SizedBox(height: getProportionateScreenWidth(10)),

            SizedBox(height: getProportionateScreenWidth(30)),
            //PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
            //
          ],
        ),
      ),
    );
  }
}
