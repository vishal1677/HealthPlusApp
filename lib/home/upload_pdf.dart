// // import 'dart:io';
// // import 'dart:io' show File;
// //
// // import 'package:firebase_storage/firebase_storage.dart';
// // import 'package:flutter/foundation.dart';
// // import 'package:flutter/material.dart';
// // import 'package:image_picker/image_picker.dart';
// // import 'package:oktoast/oktoast.dart';
// // import 'package:uuid/uuid.dart';
// //
// // class UploadPage extends StatefulWidget {
// //   const UploadPage({Key? key}) : super(key: key);
// //
// //   @override
// //   _UploadPageState createState() => _UploadPageState();
// // }
// //
// // class _UploadPageState extends State<UploadPage> {
// //   List<Widget> itemPhotosWidgetList = <Widget>[];
// //
// //   final ImagePicker _picker = ImagePicker();
// //   File? file;
// //   List<XFile>? photo = <XFile>[];
// //   List<XFile> itemImagesList = <XFile>[];
// //
// //   List<String> downloadUrl = <String>[];
// //
// //   bool uploading = false;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     double _screenwidth = MediaQuery.of(context).size.width,
// //         _screenheight = MediaQuery.of(context).size.height;
// //     return LayoutBuilder(
// //         builder: (BuildContext context, BoxConstraints constraints) {
// //           if (constraints.maxWidth < 480) {
// //             return displayPhoneUploadFormScreen(_screenwidth, _screenheight);
// //           } else {
// //             return displayWebUploadFormScreen(_screenwidth, _screenheight);
// //           }
// //         });
// //   }
// //
// //   displayPhoneUploadFormScreen(_screenwidth, _screenheight) {
// //     return Container();
// //   }
// //
// //   displayWebUploadFormScreen(_screenwidth, _screenheight) {
// //     return OKToast(
// //         child: Scaffold(
// //           body: Column(
// //             children: [
// //               const SizedBox(
// //                 height: 100.0,
// //               ),
// //               Container(
// //                 decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(12.0),
// //                     color: Colors.white70,
// //                     boxShadow: [
// //                       BoxShadow(
// //                         color: Colors.grey.shade200,
// //                         offset: const Offset(0.0, 0.5),
// //                         blurRadius: 30.0,
// //                       )
// //                     ]),
// //                 width: _screenwidth * 0.7,
// //                 height: 300.0,
// //                 child: Center(
// //                   child: itemPhotosWidgetList.isEmpty
// //                       ? Center(
// //                     child: MaterialButton(
// //                       onPressed: pickPhotoFromGallery,
// //                       child: Container(
// //                         alignment: Alignment.bottomCenter,
// //                         child: Center(
// //                           child: Image.network(
// //                             "https://static.thenounproject.com/png/3322766-200.png",
// //                             height: 100.0,
// //                             width: 100.0,
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                   )
// //                       : SingleChildScrollView(
// //                     scrollDirection: Axis.vertical,
// //                     child: Wrap(
// //                       spacing: 5.0,
// //                       direction: Axis.horizontal,
// //                       children: itemPhotosWidgetList,
// //                       alignment: WrapAlignment.spaceEvenly,
// //                       runSpacing: 10.0,
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.end,
// //                 children: [
// //                   Padding(
// //                     padding: const EdgeInsets.only(
// //                       top: 50.0,
// //                       left: 100.0,
// //                       right: 100.0,
// //                     ),
// //                     child: ElevatedButton(
// //                         // shape: RoundedRectangleBorder(
// //                         //   borderRadius: BorderRadius.circular(10),
// //                         // ),
// //                         // padding: const EdgeInsets.symmetric(
// //                         //     horizontal: 20.0, vertical: 15.0),
// //                         // color: const Color.fromRGBO(0, 35, 102, 1),
// //                         onPressed: uploading ? null : () => upload(),
// //                         child: uploading
// //                             ? const SizedBox(
// //                           child: CircularProgressIndicator(),
// //                           height: 15.0,
// //                         )
// //                             : const Text(
// //                           "Add",
// //                           style: TextStyle(
// //                             color: Colors.white,
// //                             fontSize: 20.0,
// //                             fontWeight: FontWeight.bold,
// //                           ),
// //                         )),
// //                   ),
// //                 ],
// //               ),
// //             ],
// //           ),
// //         ));
// //   }
// //
// //   addImage() {
// //     for (var bytes in photo!) {
// //       itemPhotosWidgetList.add(Padding(
// //         padding: const EdgeInsets.all(1.0),
// //         child: Container(
// //           height: 90.0,
// //           child: AspectRatio(
// //             aspectRatio: 16 / 9,
// //             child: Container(
// //               child: kIsWeb
// //                   ? Image.network(File(bytes.path).path)
// //                   : Image.file(
// //                 File(bytes.path),
// //               ),
// //             ),
// //           ),
// //         ),
// //       ));
// //     }
// //   }
// //
// //   pickPhotoFromGallery() async {
// //     photo = await _picker.pickMultiImage();
// //     if (photo != null) {
// //       setState(() {
// //         itemImagesList = itemImagesList + photo!;
// //         addImage();
// //         photo!.clear();
// //       });
// //     }
// //   }
// //
// //   upload() async {
// //     String productId = await uplaodImageAndSaveItemInfo();
// //     setState(() {
// //       uploading = false;
// //     });
// //     showToast("Image Uploaded Successfully");
// //   }
// //
// //   Future<String> uplaodImageAndSaveItemInfo() async {
// //     setState(() {
// //       uploading = true;
// //     });
// //     PickedFile? pickedFile;
// //     String? productId = const Uuid().v4();
// //     for (int i = 0; i < itemImagesList.length; i++) {
// //       file = File(itemImagesList[i].path);
// //       pickedFile = PickedFile(file!.path);
// //
// //       await uploadImageToStorage(pickedFile, productId);
// //     }
// //     return productId;
// //   }
// //
// //   uploadImageToStorage(PickedFile? pickedFile, String productId) async {
// //     String? pId = const Uuid().v4();
// //     Reference reference =
// //     FirebaseStorage.instance.ref().child('Items/$productId/product_$pId');
// //     await reference.putData(
// //       await pickedFile!.readAsBytes(),
// //       SettableMetadata(contentType: 'image/jpeg'),
// //     );
// //     String value = await reference.getDownloadURL();
// //     downloadUrl.add(value);
// //   }
// // }
//
// import 'dart:io';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:healthplus/home/home_screen.dart';
// import 'package:healthplus/sign_In/sign_in_screen.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
//
// class UploadPdf extends StatefulWidget {
//   const UploadPdf({Key? key}) : super(key: key);
//
//   @override
//   State<UploadPdf> createState() => _UploadPdfState();
// }
//
// class _UploadPdfState extends State<UploadPdf> {
//   bool uploading = false;
//   double val = 0;
//
//
//   // CollectionReference imgRef;
//   // firebase_storage.Reference ref;
//   List<File> _image = [];
//   String ImageUrl="";
//   CollectionReference _reference=FirebaseFirestore.instance.collection('users');
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: Text(" Report"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             width: MediaQuery.of(context).size.width,
//           ),
//
//           SizedBox(height: 20,),
//           ElevatedButton(
//               child: Text("Select Image", style: TextStyle(color: Colors.white,fontSize:30)),
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
//               ),
//               onPressed: () async{
//
//                 String uniqueFileName=DateTime.now().millisecondsSinceEpoch.toString();
//
//                 ImagePicker imagePicker=ImagePicker();
//                 XFile? file= await imagePicker.pickImage(source: ImageSource.gallery);
//                 print('${file?.path}');
//                 if(file==null) return;
//
//                 //refernce of path of file to firebase
//                 Reference referenceRoot=FirebaseStorage.instance.ref();
//                 final currentUser= FirebaseAuth.instance;
//                 String Uid=currentUser.currentUser!.uid;
//                 Reference referenceDirImages=referenceRoot.child('report/${Uid}/');
//
//                 //refernce of image
//                 Reference referenceImageToUpload=referenceDirImages.child(uniqueFileName);
//
//                 try {
//                   //Store the file  wait gets it executed till upload
//                   await referenceImageToUpload.putFile(File(file!.path));
//                   //success
//                   ImageUrl= await referenceImageToUpload.getDownloadURL();
//                 }
//                 catch(e){
//
//                 }
//               }
//           ),
//           SizedBox(height: 20,),
//           ElevatedButton(onPressed: () async{
//             if(ImageUrl!=null){
//
//             //   ElevatedButton(
//             //       onPressed: () {
//             //         setState(() {
//             //           uploading = true;
//             //         });
//             //         MaterialPageRoute(builder: (context) => HomeScreen());
//             //       },
//             //       child: Text(
//             //         'upload',
//             //         style: TextStyle(color: Colors.white),
//             //       ));
//               final currentUser= FirebaseAuth.instance;
//               String Uid=currentUser.currentUser!.uid;
//               Map<String,String> dataToSend ={
//                   'uid':Uid,
//                   'image':ImageUrl,
//               };
//
//             }
//           },
//             style: ButtonStyle(
//               backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
//             ),
//               child: Text("Upload Image", style: TextStyle(color: Colors.white,fontSize:30)),)
//         ],
//       ),
//     );
//   }
// }
//
// class UPLOADPDF extends StatelessWidget {
//   const UPLOADPDF({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//     );
//   }
// }
//
