// ignore_for_file: unnecessary_import

import 'dart:ui';
import 'package:do_an_mon_hoc/model/sanpham.dart';
import 'package:flutter/material.dart';

class TrendingItem extends StatelessWidget{
  final SanPham sanpham;
  final List<Color> gradientColors;
  
  TrendingItem({required this.sanpham,required this.gradientColors});

  @override
  Widget build(BuildContext context) {
    double trendCardWidth = 140;
    return GestureDetector(
      child:Stack(
        children: <Widget>[
          Container(
            width:trendCardWidth,
            child: Card(
              elevation: 2,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Spacer(),
                        Icon(Icons.ios_share,
                        color: Colors.black,
                        )
                    ],
                    ),
                    _productImage(),
                    _productDetails()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      onTap: (){},
      );
  }
  _productImage(){
    return Stack(
      children: <Widget>[
        Center(
          child: Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(image: DecorationImage(
              image: AssetImage(sanpham.Hinh_Anh),fit: BoxFit.contain
            ),
            ),
          ) ,
        ),
      ],
    );
  }
  _productDetails(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          sanpham.Ten_Sp,
          style: TextStyle(fontSize: 12,color: Color(0XFFb1bdef)),
        ),
        Text(
          sanpham.Ten_Sp,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),
        ),
        Row(
          children: <Widget>[
            Text(
              sanpham.Ten_Sp,
            style: TextStyle(
              fontWeight:FontWeight.bold,
            color: Colors.red)),
             Text(
              '#00.000',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  decoration: TextDecoration.lineThrough),
             )
          ],
        ),
      ],
    );
  }
}