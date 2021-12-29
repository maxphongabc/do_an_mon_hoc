import 'package:do_an_mon_hoc/components/default_button.dart';
import 'package:do_an_mon_hoc/components/size_config.dart';
import 'package:do_an_mon_hoc/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Đăng nhập thành công",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Trang chủ",
            press: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=> HomeScreen()));
            },
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
