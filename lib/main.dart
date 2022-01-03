
import 'package:do_an_mon_hoc/constants/firebase.dart';
import 'package:do_an_mon_hoc/controllers/appController.dart';
import 'package:do_an_mon_hoc/controllers/authController.dart';
import 'package:do_an_mon_hoc/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization.then((value){
      Get.put(AppController());
      Get.put(UserController());
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Do An Mon Hoc",
      theme:ThemeData(primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}