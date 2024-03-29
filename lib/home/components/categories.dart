import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:healthplus/home/components/Blockchain/transaction.dart';
import 'package:healthplus/home/components/addrecords.dart';
import 'package:healthplus/home/components/uploadRecords/upload_screen.dart';
import 'package:healthplus/home/components/view_full_report.dart';
import 'package:healthplus/home/components/view_report.dart';
import 'package:healthplus/home/components/viewrecords.dart';
import 'package:healthplus/home/getprediction.dart';

import '../../NearByLab/NearbylabPublishScreen.dart';
import '../../components/message.dart';
import '../../size_config.dart';
import '../upload_pdf.dart';
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
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>PublishScreen()));
                  Fluttertoast.showToast(msg: "Nearby Labouratory for test !");
                }
                else if(categories[index]["key"]=="2")  // Advice
                    {
                    Transaction t1= Transaction (
                        sender: "Vishal",
                        receiver: "Doctor",
                        details: [],
                        timestamp: DateTime.now());

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>VisitDetails(t1, true)));
                  Fluttertoast.showToast(msg: "Advice");
                }
                else if(categories[index]["key"]=="3") // Market view
                    {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewUserReport()));
                  Fluttertoast.showToast(msg: "View Report");
                }
                else if(categories[index]["key"]=="4") // Add product
                    {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>UploadRecords()));
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>UploadPdf()));
                  Fluttertoast.showToast(msg: "Add Record");

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
