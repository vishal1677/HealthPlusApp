import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:healthplus/models/user_model.dart';
import '../components/custom_surfix_icon.dart';
import '../components/default_button.dart';
import '../components/form_error.dart';
import '../constants.dart';
import '../home/home_screen.dart';
import '../size_config.dart';

class NoAccountTextMB extends StatelessWidget {
  const NoAccountTextMB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Sign Up for Manufacturer? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, ExpiryCheck.routeName),
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: Colors.teal),
          ),
        ),
      ],
    );
  }
}
// import 'package:krishakfarma/screens/sign_in/sign_in_screen.dart';
// import 'package:krishakfarma/size_config.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:krishakfarma/main.dart';
// import 'package:flutter/material.dart';
// class SignUp extends StatefulWidget {
//   static String routeName="/signup";
//   ///////
//   //final voidCallback show
//   const SignUp({Key? key}) : super(key: key);
//
//   @override
//   State<SignUp> createState() => _SignUpState();
// }
//
// class _SignUpState extends State<SignUp> {
//   bool hide=true;
//   final _emailController=TextEditingController();
//   final _passwordController=TextEditingController();
//   TextEditingController password=TextEditingController();
//   TextEditingController conformpassword=TextEditingController();
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }
//   Future SignUp() async{
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepOrangeAccent,
//       body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             Padding(padding: const EdgeInsets.only(top: 200,left: 50),
//                 child: Text("Create Your \n Account",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w300),)),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),vertical: getProportionateScreenHeight(10)),
//               margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45),
//               width: double.infinity,
//               height: getProportionateScreenHeight(480),
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Sign Up ",style: TextStyle(fontSize: 38,fontWeight: FontWeight.w400),),
//                   SizedBox(height:getProportionateScreenHeight(15),),
//                   TextField(
//                     decoration: InputDecoration(
//                         hintText: "E-mail",
//                         suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.email),)
//                     ),
//                   ),
//                   SizedBox(height: getProportionateScreenHeight(15),),
//                   TextField(
//                     controller: password,
//                     obscureText: hide,
//
//                     decoration: InputDecoration(
//                         hintText: "Password",
//                         suffixIcon: IconButton(onPressed: (){
//                           setState(() {
//                             hide=!hide;
//                           });
//                         },icon:hide? Icon(Icons.visibility_off):Icon(Icons.visibility),)
//
//                     ),
//                   ),
//                   SizedBox(
//                     height: getProportionateScreenHeight(15),
//                   ),
//                   TextField(
//                     controller: conformpassword,
//                     obscureText: hide,
//                     decoration: InputDecoration(
//                         hintText: "Conform Password",
//                         suffixIcon: IconButton(onPressed: (){
//                           setState(() {
//                             hide=!hide;
//                           });
//                         },icon:hide? Icon(Icons.visibility_off):Icon(Icons.visibility),)
//
//                     ),
//                   ),
//                   SizedBox(
//                     height: getProportionateScreenHeight(15),
//                   ),
//                   Center(
//                     child: ElevatedButton(
//                         style: TextButton.styleFrom(
//                             backgroundColor: Colors.deepOrangeAccent,
//                             padding: EdgeInsets.symmetric(vertical: 5,horizontal: 60)
//                         ),
//                         onPressed: (){
//                           if(password.text !=conformpassword.text)
//                           {
//                             showDialog(context: context, builder: (context){
//                               return AlertDialog(
//                                 title: Text("Messages"),
//                                 content: Text("Password doesn't match"),
//                               );
//                             });
//                           }
//                         }, child:Text("Sign Up")),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("Already have an account"),
//                       TextButton(onPressed: (){
//                         Navigator.push(context,MaterialPageRoute(builder: (context)=>SignIn()));
//                       }, child: Text("Sign In?"))
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


class ExpiryCheck extends StatelessWidget {
  static String routeName = "/expirycheck";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    // appBar: AppBar(
    //   title: Text("Expiry Check"),
    //   backgroundColor: Colors.teal,
    // ),
      body: BodyMB(),
    );
  }
}


class BodyMB extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                Text("Expiry Check", style: headingStyle),
                Text(
                  "Enter the manufacture  ID to Check expiry of the medicine",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                ExpiryCheckB(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),

                SizedBox(height: getProportionateScreenHeight(20)),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExpiryCheckB extends StatefulWidget {
  @override
  _ExpiryCheckBState createState() => _ExpiryCheckBState();
}

class _ExpiryCheckBState extends State<ExpiryCheckB> {
  TableRow buildRow(List<String> cells,{bool isHeader=false})=>TableRow(

      children: cells.map((cell){
        final style=TextStyle(
          fontWeight: isHeader ? FontWeight.bold:FontWeight.normal,
          fontSize: isHeader ? 14:13,
          color: isHeader ? Colors.teal:Colors.black,

          //color: Colors.deepOrangeAccent
        );
        return Padding(padding:const EdgeInsets.all(12),
            child: Center (child: Text(cell,style: style,),));
      }
      ).toList()
  );
  final _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();// web address
  String? manufacturerno;

  // expry date


  bool remember = false;


  final ManufacturerEditingController = new TextEditingController();
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          //Name(),
          SizedBox(height: getProportionateScreenHeight(30)),
          ManufactureID(),
          SizedBox(height: getProportionateScreenHeight(10)),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Check",
            press: () {
              showDialog(context: context,builder: (_){
                return AlertDialog(
                  //insetPadding: EdgeInsets.symmetric(vertical: 200,horizontal: 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0)
                  ),
                  title: Text("Check"),
                  content: Table(
                    //sortColumnIndex: 0,
                    //sortAscending: sort,

                    border: TableBorder.all(
                      color:Colors.redAccent,   width : 1.0,   style :BorderStyle.solid,    borderRadius: BorderRadius.all(Radius.circular(15),),
                    ),
                    children: [
                      buildRow(['Medicine Name','Manufacturing Date','Expiry Date'],isHeader: true),
                      buildRow(["hello","how","hii"]),
                      //buildRow([snapshot.data?.docs[index]['product'],snapshot.data?.docs[index]['Price'],snapshot.data?.docs[index]['Location']]),
                    ],
                    // columns: [
                    //   DataColumn(
                    //       label: Text('Product',
                    //         style: TextStyle(
                    //             // fontSize: 20,
                    //             // fontWeight: FontWeight.w800,
                    //             color: Colors.red
                    //         ),
                    //       )
                    //   ),
                    //   DataColumn(
                    //       label: Text('Price',
                    //         style: TextStyle(
                    //             // fontSize: 20,
                    //             // fontWeight: FontWeight.w800,
                    //             color: Colors.red
                    //         ),
                    //       )
                    //   ),
                    //   DataColumn(
                    //       label: Text('Location',
                    //         style: TextStyle(
                    //             //fontSize: 20,
                    //             //fontWeight: FontWeight.w800,
                    //             color: Colors.red
                    //         ),
                    //       )
                    //   ),
                    // ],
                    // rows: [
                    //   DataRow(
                    //       cells: [
                    //         DataCell(
                    //             Text(
                    //                 snapshot.data?.docs[index]['product']
                    //             )
                    //         ),
                    //         DataCell(
                    //             Text(
                    //                 snapshot.data?.docs[index]['Price']
                    //             )
                    //         ),
                    //         DataCell(
                    //             Text(
                    //                 snapshot.data?.docs[index]['Location']
                    //             )
                    //         ),
                    //       ]
                    //   ),
                    //
                    // ]
                  ),
                );
              });
              // Table(
              //   //sortColumnIndex: 0,
              //   //sortAscending: sort,
              //
              //   border: TableBorder.all(
              //     color:Colors.redAccent,   width : 1.0,   style :BorderStyle.solid,    borderRadius: BorderRadius.all(Radius.circular(15),),
              //   ),
              //   children: [
              //     buildRow(['Product','Price Rs/Q','Location'],isHeader: true),
              //
              //     //buildRow([snapshot.data?.docs[index]['product'],snapshot.data?.docs[index]['Price'],snapshot.data?.docs[index]['Location']]),
              //   ],
              //   // columns: [
              //   //   DataColumn(
              //   //       label: Text('Product',
              //   //         style: TextStyle(
              //   //             // fontSize: 20,
              //   //             // fontWeight: FontWeight.w800,
              //   //             color: Colors.red
              //   //         ),
              //   //       )
              //   //   ),
              //   //   DataColumn(
              //   //       label: Text('Price',
              //   //         style: TextStyle(
              //   //             // fontSize: 20,
              //   //             // fontWeight: FontWeight.w800,
              //   //             color: Colors.red
              //   //         ),
              //   //       )
              //   //   ),
              //   //   DataColumn(
              //   //       label: Text('Location',
              //   //         style: TextStyle(
              //   //             //fontSize: 20,
              //   //             //fontWeight: FontWeight.w800,
              //   //             color: Colors.red
              //   //         ),
              //   //       )
              //   //   ),
              //   // ],
              //   // rows: [
              //   //   DataRow(
              //   //       cells: [
              //   //         DataCell(
              //   //             Text(
              //   //                 snapshot.data?.docs[index]['product']
              //   //             )
              //   //         ),
              //   //         DataCell(
              //   //             Text(
              //   //                 snapshot.data?.docs[index]['Price']
              //   //             )
              //   //         ),
              //   //         DataCell(
              //   //             Text(
              //   //                 snapshot.data?.docs[index]['Location']
              //   //             )
              //   //         ),
              //   //       ]
              //   //   ),
              //   //
              //   // ]
              // );
            },
          ),
        ],
      ),
    );
  }





  // manufacture id
  TextFormField ManufactureID() {
    return TextFormField(

      autofocus: false,
      //controller: WebsiteEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("First Name cannot be Empty ");
        }
        // if(!regex.hasMatch(value)){
        //   return {"Enter valid name(Min. 3 Character)"};
        // }
        return null;
      },
      onSaved: (value) {
        // website = value!;
        // WebsiteEditingController.text = value!;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),

        labelText: "Manufacture ID",
        labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
        hintText: "Enter your Manufacture ID",

        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Colors.teal)),
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/receipt.svg"),
      ),
    );
  }


}


