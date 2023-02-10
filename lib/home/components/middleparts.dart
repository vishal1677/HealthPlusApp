import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../icon_but_with_cnt.dart';

class Middle extends StatefulWidget {
  const Middle({Key? key}) : super(key: key);

  @override
  State<Middle> createState() => _MiddleState();
}

class _MiddleState extends State<Middle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
//margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
// height: 200,
// color: Colors.amberAccent,
        height: MediaQuery.of(context).size.height *(1/6)*2,
        width: MediaQuery.of(context).size.height *double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.teal[50]),


        child: SingleChildScrollView(
          child: Column(
//mainAxisAlignment: MainAxisAlignment.center,

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconBtnWithCounter(
                  svgSrc: "assets/icons/User.svg",
                  press: () {
//Navigator.push(context, MaterialPageRoute(builder:(context)=> CartScreen()));
//Navigator.push(context, MaterialPageRoute(builder:(context)=> CustomAppBar(rating: 100.0)));
//Navigator.pushNamed(context, AddProduct.routeName);
                  }
              ),
              Text(
                "Name    :",
                style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 20,fontWeight: FontWeight.bold,),
              ),


              const SizedBox(
                height: 5,
              ),
              Text(
                "Test       :",
                style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 20,fontWeight: FontWeight.bold,),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Age        :",
                style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 20,fontWeight: FontWeight.bold,),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Gender  :",
                style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 20,fontWeight: FontWeight.bold,),
              ),

              const SizedBox(
                height: 5,
              ),
              Text(
//"Deal Date :"+(snapshot.data?.docs[index]['Deal_Date']),
//timeago.format(document.data['tripDoc']['docCreatedOn'].toDate())
                "Date       : ",
                style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 20,fontWeight: FontWeight.bold,),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

// GestureDetector(
//   onTap: () {
//
//   },
//   child: Row(
//     children: [
//       Icon(
//         Icons.shopping_cart,
//         color: Colors.red[700],
//       ),
//     ],
//   ),
// ),
                  IconBtnWithCounter(
                      svgSrc: "assets/icons/receipt.svg",
                      press: () {
//Navigator.push(context, MaterialPageRoute(builder:(context)=> CartScreen()));
//Navigator.push(context, MaterialPageRoute(builder:(context)=> CustomAppBar(rating: 100.0)));
//Navigator.pushNamed(context, AddProduct.routeName);
                      }
                  ),
                ],
              )





            ],
          ),
        ),
      ),
    );
  }
}
