import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';

import '../../components/custom_surfix_icon.dart';
import '../../models/add_date.dart';

class Advice extends StatefulWidget {
  const Advice({Key? key}) : super(key: key);

  @override
  State<Advice> createState() => _AdviceState();
}

class _AdviceState extends State<Advice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Advice"),
        backgroundColor: Colors.teal[500],
      ),
        floatingActionButton: FloatingActionButton(

        //onPressed: _incrementCounter,
        onPressed:(){},
        tooltip: 'Increment',

        child: Icon(Icons.add,color: Colors.white,),
          backgroundColor: Colors.teal,

        ),
    );
  }
}







