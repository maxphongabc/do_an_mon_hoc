import 'package:do_an_mon_hoc/controllers/appController.dart';
import 'package:do_an_mon_hoc/screens/sign_in/components/bottom_text.dart';
import 'package:do_an_mon_hoc/screens/sign_in/components/login.dart';
import 'package:do_an_mon_hoc/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticationScreen extends StatelessWidget {
  final AppController _appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() => SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.width / 3),
            Image.asset("assets/images/logo.png", width: 200,),
            SizedBox(height: MediaQuery.of(context).size.width / 5),

            Visibility(
                visible: _appController.isLoginWidgetDisplayed.value,
                child: LoginWidget()),
            Visibility(
                visible: !_appController.isLoginWidgetDisplayed.value,
                child: RegistrationWidget()),
            SizedBox(
              height: 10,
            ),
            Visibility(
              visible: _appController.isLoginWidgetDisplayed.value,
              child: BottomTextWidget(
                onTap: () {
                  _appController.changeDIsplayedAuthWidget();
                },
                text1: "Bạn chưa có tài khoản ?",
                text2: "Đăng kí tài khoản mới",
              ),
            ),
            Visibility(
              visible: !_appController.isLoginWidgetDisplayed.value,
              child: BottomTextWidget(
                onTap: () {
                  _appController.changeDIsplayedAuthWidget();
                },
                text1: "Bạn đã có tài khoản",
                text2: "Đăng nhập",
              ),
            ),
          ],
        ),
      ),)
    );
  }
}