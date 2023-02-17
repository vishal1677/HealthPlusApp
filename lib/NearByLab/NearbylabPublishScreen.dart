import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthplus/NearByLab/adddetails.dart';

import '../home/icon_but_with_cnt.dart';

class PublishScreen extends StatefulWidget {
  const PublishScreen({Key? key}) : super(key: key);

  @override
  State<PublishScreen> createState() => _PublisgScreenState();
}

class _PublisgScreenState extends State<PublishScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Near By Lab"),
      ),
      body: Container(
    child: StreamBuilder(
    stream: FirebaseFirestore.instance.collection('laboratory').snapshots(),
    builder: (context,AsyncSnapshot<QuerySnapshot> snapshot){

    if(snapshot.hasData){
    return ListView.builder(
    itemCount: snapshot.data!.docs.length,
    itemBuilder: (context,index){
    var data=snapshot.data!.docs[index].data() as Map<String,dynamic>;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Container(
          //margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          //height: 200,
          // color: Colors.amberAccent,
          height: MediaQuery.of(context).size.height *1/6,
          width: MediaQuery.of(context).size.height *1/3,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(width: 2, color: Colors.teal),color: Colors.teal[50]),


          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 5,top: 8.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Laboratory Name :"+snapshot.data?.docs[index]['labname'],
                    style: TextStyle(color: Colors.teal,fontSize: 15),),
                  const SizedBox(
                    height: 5,
                  ),

                  Text(
                    "Owner's Name :"+snapshot.data?.docs[index]['ownername'],
                    style: TextStyle(color: Colors.teal,fontSize: 15),
                  ),
                  // const SizedBox(
                  //   height: 5,
                  // ),
                  // Text(
                  //   "Location :"+snapshot.data?.docs[index]['location'],
                  //   style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 15),
                  // ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Contact no :"+snapshot.data?.docs[index]['mobileno'],
                    style: TextStyle(color: Colors.teal,fontSize: 15),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    return Container();
    }

    );

    }
      return Container();

    },
    ),
    ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed:(){
          Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> AddDetails(txt: "")));
        },
        tooltip: 'Increment',
        child:  Icon(Icons.add),
      ),
    );
  }
}