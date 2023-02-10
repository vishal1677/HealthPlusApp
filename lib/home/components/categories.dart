import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../size_config.dart';
import 'advice.dart';

class Categories extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Near by Lab","key":"1"},
      {"icon": "assets/icons/adviceImage2.svg", "text": "Advice","key":"2"},
      //{"icon": "assets/icons/Game Icon.svg", "text": "Game"},
      {"icon": "assets/icons/receipt.svg", "text": "View Report","key":"3"},
      {"icon": "assets/icons/Discover.svg", "text": " Add Report","key":"4"},
    ];
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
              (index) => CategoryCard(
              icon: categories[index]["icon"],
              text: categories[index]["text"],


              press: (){
                if(categories[index]["key"]=="1") // Flash deal
                    {
                  //Navigator.push(context,MaterialPageRoute(builder: (context)=>FlashDeal()));
                  Fluttertoast.showToast(msg: "Nearby Labouratory for test !");
                }
                else if(categories[index]["key"]=="2")  // Advice
                    {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Advice()));
                  Fluttertoast.showToast(msg: "Advice");
                }
                else if(categories[index]["key"]=="3") // Market view
                    {
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>MarketView()));
                  Fluttertoast.showToast(msg: "Categories");
                }
                else if(categories[index]["key"]=="4") // Add product
                    {
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>AddProduct(txt: '',)));
                  Fluttertoast.showToast(msg: "Add Report");

                }
              }


          ),


        ),


      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              decoration: BoxDecoration(
                color: Colors.teal[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon!),
            ),
            SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
