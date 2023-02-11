import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../icon_but_with_cnt.dart';

class ViewReport extends StatefulWidget {
  const ViewReport({Key? key}) : super(key: key);

  @override
  State<ViewReport> createState() => _ViewReportState();
}

class _ViewReportState extends State<ViewReport> {
  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("View Report"),
      ),
        body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
//margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
// height: 200,
// color: Colors.amberAccent,
          height: MediaQuery.of(context).size.height *double.infinity,
          width: MediaQuery.of(context).size.height *double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.teal[50]),


          child: SingleChildScrollView(
            child:Column(
              children: [
                Table(
                  //sortColumnIndex: 0,
                  //sortAscending: sort,

                  border: TableBorder.all(
                    color:Colors.teal,   width : 1.0,   style :BorderStyle.solid,    borderRadius: BorderRadius.all(Radius.circular(15),),
                  ),
                  children: [
                    buildRow(['Parameter','Result',],isHeader: true),

                    buildRow(["Haemoglobin",""]),
                    buildRow(["Total WBC count",""]),
                    buildRow(["RBC count",""]),
                    buildRow(["Neutrothils",""]),
                    buildRow(["Lymehocytes",""]),
                    buildRow(["Monocytes",""]),
                    buildRow(["Eosinophils",""]),
                    buildRow(["Monocytes",""]),
                    buildRow(["Eosinophils",""]),
                    buildRow(["Basophils",""]),
                    buildRow(["Haematocrit (HCT)",""]),
                    buildRow(["MCV",""]),
                    buildRow(["MCH",""]),
                    buildRow(["MCHC",""]),
                    buildRow(["RDW ",""]),
                    buildRow(["Platelet Count",""]),


                  ],

                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                  ],
                )
              ],
            )

          ),
        ),
      ),
    );
  }
}
