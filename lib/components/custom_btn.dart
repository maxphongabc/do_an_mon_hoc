import 'package:do_an_mon_hoc/components/custom_text.dart';
import 'package:do_an_mon_hoc/screens/details/details_screen.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color txtColor;
  final Color bgColor;
  final Color shadowColor;
  final Function onTap;

  const CustomButton(
      {Key key,
      @required this.text,
      this.txtColor,
      this.bgColor,
      this.shadowColor,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: PhysicalModel(
        color: Colors.grey.withOpacity(.4),
        elevation: 2,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: bgColor ?? Colors.black,
     ),
          child: Container(
            margin: EdgeInsets.all(14),
            alignment: Alignment.center,
            child: CustomText(
              text: text,
              color: txtColor ?? Colors.white,
              size: 22,
              weight: FontWeight.normal,
            ),
          )
        ),
      ),
    );
  }
}
class CustomButtonSocial extends StatelessWidget {
  final VoidCallback onPressedFn;
  final String image;
  final String title;

  const CustomButtonSocial({
     this.onPressedFn,
     this.image,
     this.title,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressedFn,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/icons/$image.png',
              fit: BoxFit.cover,
              height: 20,
              width: 20,
            ),
            CustomTextt(
              text: title,
              fontSize: 14,
            ),
            Container(width: 20),
          ],
        ),
      ),
    );
  }
}
