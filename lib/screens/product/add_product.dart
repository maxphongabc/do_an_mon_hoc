// import 'package:do_an_mon_hoc/controllers/productController.dart';
// import 'package:flutter/material.dart';

// class Add extends StatefulWidget {
//   Add({Key key, this.db}) : super(key: key);
//   ProductController db;
//   @override
//   _AddState createState() => _AddState();
// }

// class _AddState extends State<Add> {
//   TextEditingController nameController = new TextEditingController();
//   TextEditingController codeController = new TextEditingController();
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(56, 75, 49, 1.0),
//       appBar: AppBar(
//         backgroundColor: Color.fromRGBO(56, 75, 49, 1.0),
//         title: Text("Country Add"),
//         actions: [
//           IconButton(
//               icon: Icon(Icons.delete),
//               onPressed: () {
//                 // widget.db.delete(widget.country["id"]);
//                 // Navigator.pop(context, true);
//               })
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             children: [
//               TextFormField(
//                 style: TextStyle(color: Colors.white),
//                 decoration: inputDecoration("name"),
//                 controller: nameController,
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               TextFormField(
//                 style: TextStyle(color: Colors.white),
//                 decoration: inputDecoration("brand"),
//                 controller: codeController,
//               ),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: Container(
//         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         color: Colors.transparent,
//         child: BottomAppBar(
//           color: Colors.transparent,
//           child: RaisedButton(
//               color: Colors.black,
//               onPressed: () {
//                 widget.db.create(nameController.text, codeController.text);
//                 Navigator.pop(context, true);
//               },
//               child: Text(
//                 "Save",
//                 style: TextStyle(color: Colors.white),
//               )),
//         ),
//       ),
//     );
//   }

//   InputDecoration inputDecoration(String labelText) {
//     return InputDecoration(
//       focusColor: Colors.white,
//       labelStyle: TextStyle(color: Colors.white),
//       labelText: labelText,
//       fillColor: Colors.white,
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(25.0),
//         borderSide: BorderSide(color: Colors.white),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(25.0),
//         borderSide: BorderSide(
//           color: Colors.black,
//           width: 2.0,
//         ),
//       ),
//     );
//   }
// }