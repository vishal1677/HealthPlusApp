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
          onTap: () => Navigator.pushNamed(context, SignUpScreenMB.routeName),
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


class SignUpScreenMB extends StatelessWidget {
  static String routeName = "/sign_upmb";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
                Text("Manufacture Mdedicine", style: headingStyle),
                Text(
                  "Complete details ",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignUpFormMB(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     SocalCard(
                //       icon: "assets/icons/google-icon.svg",
                //       press: () {},
                //     ),
                //     SocalCard(
                //       icon: "assets/icons/facebook-2.svg",
                //       press: () {},
                //     ),
                //     SocalCard(
                //       icon: "assets/icons/twitter.svg",
                //       press: () {},
                //     ),
                //   ],
                // ),
                SizedBox(height: getProportionateScreenHeight(20)),
                // Text(
                //   'By continuing your confirm that you agree \nwith our Term and Condition',
                //   textAlign: TextAlign.center,
                //   style: Theme.of(context).textTheme.caption,
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpFormMB extends StatefulWidget {
  @override
  _SignUpFormMBState createState() => _SignUpFormMBState();
}

class _SignUpFormMBState extends State<SignUpFormMB> {
  final _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  String? name; // name
  String? surname; // surname
  String? email; // email
  String? address; // address
  String ? website; // web address
  String? manufacturerno;
  String ? RegistrationNo; // registration no
  String ?GSTNo; // gst number
  String? password; // password
  String? conform_password; // conform password
  String? manufacturername;

  // expry date
  DateTime date1 = new DateTime.now();
  DateTime date2 = new DateTime.now();

  bool remember = false;

  final firstNameEditingController = new TextEditingController(); // for name
  final AddressEditingController = new TextEditingController(); // for address
  final WebsiteEditingController = new TextEditingController();
  final RegistrationEditingController = new TextEditingController();
  final GSTNOEditingController = new TextEditingController();
  final ManufacturerEditingController = new TextEditingController();
  final secondNameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final conformPasswordEditingController = new TextEditingController();
  final manufacturernameEditingController = new TextEditingController();
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
          Name(),
          SizedBox(height: getProportionateScreenHeight(30)),
          ID(),
          SizedBox(height: getProportionateScreenHeight(30)),
          BatchNO(),


          SizedBox(height: getProportionateScreenHeight(30)),
          Price(),
          SizedBox(height: getProportionateScreenHeight(30)),
          ManufactureID(),
          SizedBox(height: getProportionateScreenHeight(30)),
          date_time_e(),
          SizedBox(height: getProportionateScreenHeight(30)),
          date_time_m(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Continue",
            press: () {},
          ),
        ],
      ),
    );
  }

  // name
  TextFormField Name() {
    return TextFormField(

      autofocus: false,
      controller: firstNameEditingController,
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
        name = value!;
        firstNameEditingController.text = value!;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),

        labelText: "Name",
        labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
        hintText: "Enter your Name",

        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Colors.teal)),
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  // iD
  TextFormField ID() {
    return TextFormField(

      autofocus: false,
      controller: RegistrationEditingController,
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
        RegistrationNo = value!;
        RegistrationEditingController.text = value!;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),

        labelText: "Medicine ID",
        labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
        hintText: "Enter Medicine ID",

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

  // Batch Number
  TextFormField BatchNO() {
    return TextFormField(

      autofocus: false,
      controller: GSTNOEditingController,
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
        GSTNo = value!;
        GSTNOEditingController.text = value!;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),

        labelText: "Batch No",
        labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
        hintText: "Enter Batch Number",

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

  // expiry date
  Widget date_time_e() {
    return Container(
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2, color: Color(0xffC5C5C5))),
      width: 300,
      child: TextButton(
        onPressed: () async {
          DateTime? newDate = await showDatePicker(
              context: context,
              initialDate: date1,
              firstDate: DateTime(2020),
              lastDate: DateTime(2100));
          if (newDate == Null) return;
          setState(() {
            date1 = newDate!;
          });
        },
        child: Text(
          'Expiry date :  ${date1.day}/${date1.month}/${date1.year}',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
    );
  }


  // manufacturing date
  Widget date_time_m() {
    return Container(
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2, color: Color(0xffC5C5C5))),
      width: 300,
      child: TextButton(
        onPressed: () async {
          DateTime? newDate = await showDatePicker(
              context: context,
              initialDate: date2,
              firstDate: DateTime(2020),
              lastDate: DateTime(2100));
          if (newDate == Null) return;
          setState(() {
            date2 = newDate!;
          });
        },
        child: Text(
          'Manufacturing  date :  ${date2.day}/${date2.month}/${date2.year}',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
    );
  }


  //price
  TextFormField Price() {
    return TextFormField(

      autofocus: false,
      controller: AddressEditingController,
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
        address = value!;
        AddressEditingController.text = value!;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),

        labelText: "Price",
        labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
        hintText: "Enter the price",

        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Colors.teal)),
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Cash.svg"),
      ),
    );
  }


  // manufacture id
  TextFormField ManufactureID() {
    return TextFormField(

      autofocus: false,
      controller: WebsiteEditingController,
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
        website = value!;
        WebsiteEditingController.text = value!;
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


