import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';

import '../components/custom_surfix_icon.dart';
import '../home/components/locationPage.dart';
import '../models/add_date.dart';

class AddDetails extends StatefulWidget {
  var txt="select location Press icon";
  static String routeName = "/addproduct";

  AddDetails( {Key? key,required this.txt}) : super(key: key);

  @override
  _AddDetailsState createState() => _AddDetailsState();
}

class _AddDetailsState extends State<AddDetails> {

  final controllerName=TextEditingController();
  final controllerProduct=TextEditingController();
  final controllerQuantity=TextEditingController();
  final controllerMobileNo=TextEditingController();
  final controllerLocation=TextEditingController();
  final controllerDealDate=TextEditingController();








  final box = Hive.box<Add_data>('data');
  DateTime date = new DateTime.now();
  String? selctedItem;
  String? selctedItemi;
  String ? locationn;
  final TextEditingController expalin_C = TextEditingController();
  FocusNode ex = FocusNode();
  final TextEditingController amount_c = TextEditingController();
  FocusNode amount_ = FocusNode();
  final List<String> _item = [
    "Apple", "Banana", "Grapes", "Orange", "Cotton", "Brinjal", "Wheat", "Corn", "Lady_Finger","Gram", "Peanut", "Soyabin",
    "Cabbage", "Marigold", "Mogara", "Onion", "Garlic", "Carrot", "Tomato", "Raddish","Sapodila","Sugarcan","Patato","Ginger",
    "Mustard", "Coriander", "Caulflower", "Shepu", "Fenugreek", "Ambadi", "BitterGaurd", "DrumStick", "Chawali",
    "Masoor", "Moong", "Mataki", "Pea", "Ailanthus", "Allspice", "Almond", "Alovera", "Antherium","Arecanut",
    "AshGourd", "Ashwagandha", "Beans", "Beatroot", "BengalGram", "Ber", "Betelvine", "Bajra", "Brocali", "BlackGram",
    "BottleGourd",  "Capsicum", "Mango", "Cardamom", "CashewNut", "Champak", "Chive", "Cinnamon",
    "CitronellaGrass", "Colve", "Cocoa", "Coconut", "Coffee", "Coleus", "Cowpea", "Cucumber", "Cumin",
    "CurryLeaves", "Rose", "Daylily", "Dill", "DragonFruit", "Fig", "FoxTailMillet", "FrenchBean",
    "Guava", "Jackfruit", "Jasmine", "Lemon", "Mint", "PearlMillet", "Pomegranate","Pumpkin", "Rice", "Rubber",
    "Sunflower", "Strawbery", "Tamarind","Tea", "Termeric", "Watermelon", "Vanila", "Walnut"


  ];



  final List<String> _itemei = [
    'Income',
    "Expand",
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ex.addListener(() {
      setState(() {});
    });
    amount_.addListener(() {
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      body:SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            background_container(context),
            Positioned(
              top: 120,
              child: main_container(),
            ),
          ],
        ),
      ),
    );
  }
  Container main_container() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      height: 650,
      width: 340,
      child: Column(
        children: [
          SizedBox(height: 30),
          Name(),// for name
          // SizedBox(height: 30),
          // Product(),// for select the product
          SizedBox(height: 30),
          Quantity(),// for quantity of product
          SizedBox(height: 30),
          Location(),// for location of farmer
          //finalloc(),
          //SizedBox(height: 30),
          //date_time(),
          SizedBox(height: 30),
          TakeMobileNo(),// Take mobile No input
          Spacer(),
          save(),
          SizedBox(height: 25),

        ],
      ),
    );
  }

  GestureDetector save() {
    return GestureDetector(
      onTap: () {
        final products=Products(
          name:controllerName.text,
          //product: selctedItem!,
          Quantity: controllerQuantity.text,
          mobileno: controllerMobileNo.text,
          location:"${widget.txt}",
          //dealDate:date,




        );
        createProduct(products);
        Navigator.pop(context);


        //   var add = Add_data(
        //       selctedItemi!, amount_c.text, date, expalin_C.text, selctedItem!);
        //   box.add(add);
        //   //final products=Products()
        //   //Navigator.of(context).pop();
        //
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.teal[500],
        ),
        width: 120,
        height: 50,
        child: Text(
          'Save',

          style: TextStyle(
            fontFamily: 'f',
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ),
    );
  }


  // ElevatedButton save(){
  //   return ElevatedButton(
  //       onPressed:(){
  //         final products=Products(
  //           name:controllerName.text,
  //           //product: selctedItem != null?.text
  //           Quantity: int.parse(controllerQuantity.text),
  //           mobileno: int.parse(controllerMobileNo.text),
  //           //location:
  //           //dealDate:
  //
  //
  //
  //
  //         );
  //         createProduct(products);
  //         Navigator.pop(context);
  //
  //       },
  //       child:Text('Save')
  //   );
  // }

  Widget date_time() {
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
              initialDate: date,
              firstDate: DateTime(2020),
              lastDate: DateTime(2100));
          if (newDate == Null) return;
          setState(() {
            date = newDate!;
          });
        },
        child: Text(
          'Approximate deal date :  ${date.day}/${date.month}/${date.year}',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
    );
  }


  Widget finalloc() {
    return Container(
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
          //controller: controllerLocation,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 2, color: Color(0xffC5C5C5))),
        width: 300,
        // child: TextButton(
        //   onPressed:() =>
        //     Navigator.of(context).pushReplacement(
        //       MaterialPageRoute(builder: (context) => LocationPage()),
        //     ),
        //
        //   // onPressed: () async {
        //   //   Text? newDate = (await MaterialPageRoute(builder: (context) => LocationPage())) as Text?;
        //   //   if (newDate == Null) return;
        //   //   // setState(() {
        //   //   //   Text = newDate! as DateTime;
        //   //   // });
        //   //},
        //   child: Text(
        //     //'Approximate deal date :  ${date.day}/${date.month}/${date.year}',
        //     '${widget.txt}',
        //     style: TextStyle(
        //       fontSize: 15,
        //       color: Colors.black,
        //     ),
        //
        //   ),
        //   // suffixIcon:IconButton(
        //   //     icon: SvgPicture.asset(
        //   //       "assets/icons/Discover.svg",
        //   //
        //   //     ),
        //   //
        //   //     onPressed:() {
        //   //       Navigator.of(context).pushReplacement(
        //   //         MaterialPageRoute(builder: (context) => LocationPage()),
        //   //       );
        //   //     }
        //   // ),
        // ),
        child:TextButton.icon(
          icon: SvgPicture.asset(
            "assets/icons/Discover.svg",

          ),
          label:Text( "${widget.txt}"?? "press icon for location",
            style: TextStyle(
              //fontSize: 13,
              color: Colors.black,
            ),
          ),



          onPressed:() {},
        )
    );
  }

  Padding How() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: Color(0xffC5C5C5),
          ),
        ),
        child: DropdownButton<String>(
          value: selctedItemi,
          onChanged: ((value) {
            setState(() {
              selctedItemi = value!;
            });
          }),
          items: _itemei
              .map((e) => DropdownMenuItem(
            child: Container(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Text(
                    e,
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
            value: e,
          ))
              .toList(),
          selectedItemBuilder: (BuildContext context) => _itemei
              .map((e) => Row(
            children: [Text(e)],
          ))
              .toList(),
          hint: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              'How',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          dropdownColor: Colors.white,
          isExpanded: true,
          underline: Container(),
        ),
      ),
    );
  }

  Padding amount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.number,
        focusNode: amount_,
        controller: amount_c,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          labelText: 'amount',
          labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Colors.teal)),
        ),
      ),
    );
  }

  Padding explain() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        focusNode: ex,
        controller: expalin_C,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          labelText: 'explain',
          labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Colors.teal)),
        ),
      ),
    );
  }

  // for name of farmer
  Padding Name() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        //focusNode: ex,
        //controller: expalin_C,// here for storing the name of farmer modify code later
        controller: controllerName,
        decoration: InputDecoration(

          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          labelText: 'Enter Lab name',

          labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Colors.teal)),
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Shop Icon.svg"),
        ),
      ),
    );
  }



  // for location

  Padding Location() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.none,
        //focusNode: ex,
        //autofocus: false,
        //initialValue: 'your initial text',
        controller: expalin_C,// here for storing the name of farmer modify code later
        showCursor: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          //labelText: "${widget.txt}",

          hintText: "select location press icon ",
          labelText: "${widget.txt}",
          // hintText: "${widget.txt}",
          // labelText: "select location press icon at right side",
          labelStyle: TextStyle(fontSize: 15, color: Colors.black),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
          focusedBorder: OutlineInputBorder(

              borderRadius: BorderRadius.circular(10),

              borderSide: BorderSide(width: 2, color: Colors.teal)),
          // suffixIcon: IconButton(
          //
          //   // onPressed:() {
          //   //   Navigator.of(context).pushReplacement(
          //   //     MaterialPageRoute(builder: (context) =>LocationPage())
          //   //   );
          //   },
          //   icon: CustomSurffixIcon(svgIcon: "assets/icons/Discover.svg"),
          // )
          //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Discover.svg",),
          suffixIcon:IconButton(
            icon: SvgPicture.asset(
              "assets/icons/Locationpoint.svg",

            ),

            onPressed:() {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) =>LocationPage())
              );
            },
          ),
        ),

      ),
    );
  }

  // for quantity of product

  Padding Quantity() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: controllerQuantity,
        keyboardType:TextInputType.text,
        //focusNode: ex,
        //controller: expalin_C,// here for storing the name of farmer modify code later
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          labelText: 'Enter labratory owner name',
          labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Colors.teal)),
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User Icon.svg"),
        ),
      ),
    );
  }

  Padding TakeMobileNo(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: controllerMobileNo,
        keyboardType:TextInputType.number,
        //focusNode: ex,
        //controller: expalin_C,// here for storing the name of farmer modify code later
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          labelText: 'Enter Mobile No',
          labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Colors.teal)),
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg"),
        ),
      ),
    );
  }
  Padding Product() {

    _item.sort();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),

      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: Color(0xffC5C5C5),
          ),
        ),
        child: DropdownButton<String>(
          value: selctedItem,

          onChanged: ((value) {

            setState(() {

              selctedItem = value!;

            });
          }),
          items: _item
              .map((e) => DropdownMenuItem(
            child: Container(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Container(
                    width: 40,

                    //child: Image.asset('images/${e}.png'),
                    child: Image.asset('assets/images/${e}_Small.png'),
                  ),
                  SizedBox(width: 10),
                  Text(

                    e,
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
            value: e,
          ))
              .toList(),
          selectedItemBuilder: (BuildContext context) => _item
              .map((e) => Row(
            children: [
              Container(
                width: 42,
                //child: Image.asset('images/${e}.png'),
                child: Image.asset('assets/images/${e}_Small.png'),
              ),
              SizedBox(width: 5),
              Text(e)
            ],
          ))
              .toList(),

          hint: Padding(
            padding: const EdgeInsets.only(top: 12),

            child: Text(
              'Select Product',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          dropdownColor: Colors.white,
          isExpanded: true,
          underline: Container(),
        ),
      ),
    );
  }

  Column background_container(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 240,
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    Text(
                      'Add Your Labouratory ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.attach_file_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );


  }
  Future createProduct(Products user) async{
    final docUser=FirebaseFirestore.instance.collection('laboratory').doc();
    //user.id=docUser.id;
    final json=user.toJson();
    await docUser.set(json);

  }
}


class Products{
  final String name;
  //final String product;
  final String Quantity;///
  final String mobileno;
  var location;
  //final DateTime dealDate;
  Products({
    required this.name,
    //required this.product,
    required this.Quantity,
    required this.mobileno,
    required this.location,
    //required this.dealDate,

  });



  Map<String ,dynamic> toJson()=>
      {
        'labname':name,
        //'Product':product,
        'ownername':Quantity,
        'mobileno':mobileno,
        'location':location,
        //'Deal_Date':dealDate
      };
}