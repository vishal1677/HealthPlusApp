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

class NoAccountTextM extends StatelessWidget {
  const NoAccountTextM({
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
          onTap: () => Navigator.pushNamed(context, SignUpScreenM.routeName),
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


class SignUpScreenM extends StatelessWidget {
  static String routeName = "/sign_upm";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text("Sign Up"),
        backgroundColor: Colors.teal,
        title: Text("Sign Up"),


      ),
      body: BodyM(),
    );
  }
}


class BodyM extends StatelessWidget {
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
                Text("Account for Manufacturer", style: headingStyle),
                Text(
                  "Complete your details ",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignUpFormM(),
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

class SignUpFormM extends StatefulWidget {
  @override
  _SignUpFormMState createState() => _SignUpFormMState();
}

class _SignUpFormMState extends State<SignUpFormM> {
  final _auth=FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  String? name;// name
  String? surname;// surname
  String? email;// email
  String? address;// address
  String ? website;// web address
  String? manufacturerno;
  String ? RegistrationNo;// registration no
  String ?GSTNo;// gst number
  String? password;// password
  String? conform_password;// conform password
  String? manufacturername;
  bool remember = false;

  final firstNameEditingController=new TextEditingController();// for name
  final AddressEditingController=new TextEditingController(); // for address
  final WebsiteEditingController=new TextEditingController();
  final RegistrationEditingController=new TextEditingController();
  final GSTNOEditingController=new TextEditingController();
  final ManufacturerEditingController=new TextEditingController();
  final secondNameEditingController=new TextEditingController();
  final emailEditingController=new TextEditingController();
  final passwordEditingController=new TextEditingController();
  final conformPasswordEditingController=new TextEditingController();
  final manufacturernameEditingController=new TextEditingController();
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
          Address(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Website(),
          SizedBox(height: getProportionateScreenHeight(30)),
          ManufacturerName(),
          SizedBox(height: getProportionateScreenHeight(30)),
          RegisrationNo(),
          SizedBox(height: getProportionateScreenHeight(30)),
          GSTNO(),
          SizedBox(height: getProportionateScreenHeight(30)),
          ManufacturerNo(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildConformPassFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                SignUp(emailEditingController.text, passwordEditingController.text);
                // Navigator.push(context,
                //   MaterialPageRoute(builder: (context)=> VerifyEmail(),
                //   )
                // );
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> HomeScreen(),///
                    )
                );
                // SignUp(emailEditingController.text, passwordEditingController.text);

                // if all are valid then go to success screen
              }
            },
          ),
        ],
      ),
    );
  }

  //  for password
  TextFormField buildConformPassFormField() {
    return TextFormField(
      obscureText: true,
      controller: conformPasswordEditingController,
      onSaved: (newValue) {
        conform_password = newValue;
        conformPasswordEditingController.text=newValue!;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.isNotEmpty && password == conform_password) {
          removeError(error: kMatchPassError);
        }
        conform_password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if ((password != value)) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        labelText: "Confirm Password",
        labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
        hintText: "Re-enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Colors.teal)),
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  // for website url done
  TextFormField Website() {
    return TextFormField(

      autofocus: false,
      controller: WebsiteEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex=new RegExp(r'^.{3,}$');
        if(value!.isEmpty){
          return ("First Name cannot be Empty ");

        }
        // if(!regex.hasMatch(value)){
        //   return {"Enter valid name(Min. 3 Character)"};
        // }
        return null;
      },
      onSaved: (value){
        website=value!;
        WebsiteEditingController.text=value!;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),

        labelText: "Website",
        labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
        hintText: "Enter your Website",

        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Colors.teal)),
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Shop Icon.svg"),
      ),
    );

  }

  // for registration number done

  TextFormField RegisrationNo() {
    return TextFormField(

      autofocus: false,
      controller: RegistrationEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex=new RegExp(r'^.{3,}$');
        if(value!.isEmpty){
          return ("First Name cannot be Empty ");

        }
        // if(!regex.hasMatch(value)){
        //   return {"Enter valid name(Min. 3 Character)"};
        // }
        return null;
      },
      onSaved: (value){
        RegistrationNo=value!;
        RegistrationEditingController.text=value!;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),

        labelText: "Registration No",
        labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
        hintText: "Enter your Registration Number",

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

  // for Gst Number done
  TextFormField GSTNO() {
    return TextFormField(

      autofocus: false,
      controller: GSTNOEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex=new RegExp(r'^.{3,}$');
        if(value!.isEmpty){
          return ("First Name cannot be Empty ");

        }
        // if(!regex.hasMatch(value)){
        //   return {"Enter valid name(Min. 3 Character)"};
        // }
        return null;
      },
      onSaved: (value){
        GSTNo=value!;
        GSTNOEditingController.text=value!;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),

        labelText: "GST No",
        labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
        hintText: "Enter your GST Number",

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

  // for manufacturer number done
  TextFormField ManufacturerNo() {
    return TextFormField(

      autofocus: false,
      controller: ManufacturerEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex=new RegExp(r'^.{3,}$');
        if(value!.isEmpty){
          return ("First Name cannot be Empty ");

        }
        // if(!regex.hasMatch(value)){
        //   return {"Enter valid name(Min. 3 Character)"};
        // }
        return null;
      },
      onSaved: (value){
        manufacturerno=value!;
        ManufacturerEditingController.text=value!;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),

        labelText: "Manufacturer No",
        labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
        hintText: "Enter  Manufacturer Number",

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

  // manufacturer name done

  TextFormField ManufacturerName() {
    return TextFormField(

      autofocus: false,
      controller: manufacturernameEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex=new RegExp(r'^.{3,}$');
        if(value!.isEmpty){
          return ("First Name cannot be Empty ");

        }
        // if(!regex.hasMatch(value)){
        //   return {"Enter valid name(Min. 3 Character)"};
        // }
        return null;
      },
      onSaved: (value){
        manufacturername=value!;
        manufacturernameEditingController.text=value!;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),

        labelText: "Manufacturer Name",
        labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
        hintText: "Enter  Manufacturer Name",

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


  // for Address done
  TextFormField Address() {
    return TextFormField(

      autofocus: false,
      controller: AddressEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex=new RegExp(r'^.{3,}$');
        if(value!.isEmpty){
          return ("First Name cannot be Empty ");

        }
        // if(!regex.hasMatch(value)){
        //   return {"Enter valid name(Min. 3 Character)"};
        // }
        return null;
      },
      onSaved: (value){
        address=value!;
        AddressEditingController.text=value!;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),

        labelText: "Address",
        labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
        hintText: "Enter your Address",

        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Colors.teal)),
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Locationpoint.svg"),
      ),
    );

  }

  // for name done
  TextFormField Name() {
    return TextFormField(

      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex=new RegExp(r'^.{3,}$');
        if(value!.isEmpty){
          return ("First Name cannot be Empty ");

        }
        // if(!regex.hasMatch(value)){
        //   return {"Enter valid name(Min. 3 Character)"};
        // }
        return null;
      },
      onSaved: (value){
        name=value!;
        firstNameEditingController.text=value!;
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

  // for surname done
  TextFormField SurName() {
    return TextFormField(

      autofocus: false,

      controller: secondNameEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {

        if(value!.isEmpty){
          return ("First Name cannot be Empty ");

        }
        return null;
      },

      onSaved: (value){
        surname=value!;
        secondNameEditingController.text=value!;
      },






      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        labelText: "Surname",
        labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
        hintText: "Enter your SurName",

        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Colors.teal)),
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );

  }



  // for pass word done
  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      controller: passwordEditingController,
      onSaved: (newValue){
        password = newValue;
        passwordEditingController.text=newValue!;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        labelText: "Password",
        labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
        hintText: "Enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Colors.teal)),
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  // for Email done
  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue){
        email = newValue;
        emailEditingController.text=newValue!;

      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        labelText: "Email",
        labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
        hintText: "Enter your email",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Colors.teal)),
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );


  }


  void SignUp(String email,String password) async
  {

    if(_formKey.currentState!.validate())
    {
      await _auth.createUserWithEmailAndPassword(email: email, password: password).then((value) => {
        postDetailsToFirestore()
      }).catchError((e){
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
  postDetailsToFirestore() async{

    // calling our firestore
    // calling oure user model
    // sending these value

    FirebaseFirestore firebaseFirestore=FirebaseFirestore.instance;
    User? user= _auth.currentUser;

    UserModelM userModel=UserModelM();


    // writing all the values

    // userModel.email=user!.email;
    // userModel.uid=user!.uid;
    // userModel.firstName=firstNameEditingController.text;
    userModel.email=user!.email;
    userModel.address=AddressEditingController.text;
    userModel.uid=user!.uid;
    userModel.Name=firstNameEditingController.text;
    userModel.website=WebsiteEditingController.text;
    userModel.RegistrationNo=RegistrationEditingController.text;
    userModel.GSTNo=GSTNOEditingController.text;
    userModel.ManufacturerNo=ManufacturerEditingController.text;
    userModel.manufacturerName=manufacturernameEditingController.text;






    await firebaseFirestore.collection("ManufacturerSignUp").doc(user.uid).set(userModel.toMap());

    Fluttertoast.showToast(msg: "Account Created Sucessfully !");

    // Navigator.pushAndRemoveUntil((context), MaterialPageRoute(builder: (context)=>HomeScreen()), (route) => false);






  }
}


class UserModelM {
  String? uid;
  String? email;
  String? Name;
  String ? address;
  String ? website;
  String ? RegistrationNo;
  String? GSTNo;
  String ? ManufacturerNo;
  String ?manufacturerName;

  // this model help to us  to send and pass data to our registration screen

  UserModelM({this.uid,this.email,this.Name,this.address,this.website,this.RegistrationNo,this.GSTNo,this.ManufacturerNo,this.manufacturerName});

  // receiving data from the sever

  factory UserModelM.fromMap(map)
  {
    return UserModelM(

      email: map['Email'],
      Name: map['Name'],
      address: map['Address'],
      website: map['Website'],
      RegistrationNo: map['RegistrationNo'],
      GSTNo: map['GSTNo'],
      ManufacturerNo: map['ManufacturerNo'],
      manufacturerName: map['ManufacturerName'],
      uid: map["uid"],
    );



  }

  // sending data to the server

  Map<String,dynamic>toMap()
  {
    return
      {
        'Email':email,
        'Name':Name,
        'Address':address,
        'GSTNo':GSTNo,
        'Website':website,
        'RegistrationNo':RegistrationNo,
        'ManufacturerNo':ManufacturerNo,
        'ManufacturerName':manufacturerName,
        'uid':uid,

      };
  }
}