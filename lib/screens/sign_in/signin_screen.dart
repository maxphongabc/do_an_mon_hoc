
import 'package:do_an_mon_hoc/screens/sign_in/components/body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
    static String routeName = "/sign_in";
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
       appBar: AppBar(
        title: const Text("Đăng nhập"),
      ),
      body: const Body(),
    );
  }
}