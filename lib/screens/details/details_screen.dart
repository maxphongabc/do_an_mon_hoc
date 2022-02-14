
import 'package:do_an_mon_hoc/constants.dart';
import 'package:do_an_mon_hoc/model/Product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatelessWidget{
  final ProductModel productsmodel;
  ProductDetailsScreen(this.productsmodel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                        height: 196,
                        width: double.infinity,
                        child: Image.network(
                          productsmodel.Image,
                          fit: BoxFit.contain,
                          ),
                        ),
                        IconButton(
                          onPressed: (){
                            Get.back();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                              ),
                        )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                      ),
                      child: Column(
                        children: [
                          CustomTextt(
                            text: productsmodel.Name,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RoundedShapeInfo(
                                title:  'Size',
                                content: CustomTextt(
                                  text: productsmodel.Name,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  alignment: Alignment.center,
                                ),
                              ),
                              RoundedShapeInfo(
                                title:  'Màu sắc',
                                content: Container(
                                  height: 22,
                                  width: 22,
                                  decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    //color: productsmodel.color,
                                  ),
                                ),
                              ),
                            ],                      
                          ),
                          SizedBox(
                            height: 33,
                          ),
                          CustomTextt(
                            text: 'Chi tiết',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(height: 15),
                          CustomTextt(
                            text:productsmodel.Description,
                            fontSize: 14,
                            height: 2,
                          )
                        ],
                      ),
                    ),
                ],
              ),
            ),
            ),
            Material(
              elevation: 12,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 17,horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextt(
                          text: 'Giá',
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                        CustomTextt(
                          text: '\$${productsmodel.Price}',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                      ],
                    ),  
                    Container(
                       height: 50,
                      width: 146,
                      child: CustomButton('Thêm vào giỏ',
                      (){}
                      ),                                       
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
class RoundedShapeInfo extends StatelessWidget {
  final String title;
  final Widget content;

  const RoundedShapeInfo({
     this.title,
     this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 160,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextt(
              text: title,
              fontSize: 14,
              alignment: Alignment.center,
            ),
            content,
          ],
        ),
      ),
    );
  }
}
  class CustomTextt extends StatelessWidget {
    final String text;
    final double fontSize;
    final FontWeight fontWeight;
    final Color color;
    final Alignment alignment;
    final int maxLines;
    final double height;

    CustomTextt({
      this.text = '',
      this.fontSize = 16,
      this.fontWeight = FontWeight.normal,
      this.color = Colors.black,
      this.alignment = Alignment.topLeft,
      this.maxLines,
      this.height,
    });

    @override
    Widget build(BuildContext context) {
      return Container(
        alignment: alignment,
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
            height: height,
          ),
          maxLines: maxLines,
        ),
      );
    }
  }
  class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressedFn;

  CustomButton(this.text, this.onPressedFn);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: primaryColor,
        elevation: 0,
        padding: EdgeInsets.symmetric(vertical: 16),
      ),
      onPressed: onPressedFn,
      child: CustomTextt(
        text: text,
        fontSize: 14,
        color: Colors.white,
        alignment: Alignment.center,
      ),
    );
  }
}