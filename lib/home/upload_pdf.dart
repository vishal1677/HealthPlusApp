import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UploadPdf extends StatefulWidget {
  const UploadPdf({Key? key}) : super(key: key);

  @override
  State<UploadPdf> createState() => _UploadPdfState();
}

class _UploadPdfState extends State<UploadPdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(" Report"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
          ),

          ElevatedButton(
              child: Text("Upload Pdf", style: TextStyle(color: Colors.white,fontSize:30)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>UPLOADPDF()));
              }
          ),
          SizedBox(height: 20,),
          ElevatedButton(
              child: Text("Upload Pdf", style: TextStyle(color: Colors.white,fontSize:30)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
              ),
              onPressed: () {}
          ),

        ],
      ),
    );
  }
}

class UPLOADPDF extends StatelessWidget {
  const UPLOADPDF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}
