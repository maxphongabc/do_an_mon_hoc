import 'package:do_an_mon_hoc/constants.dart';
import 'package:do_an_mon_hoc/model/sanpham.dart';
// import 'package:do_an_mon_hoc/model/sanpham.dart';
import 'package:do_an_mon_hoc/screens/details/components/add_to_cart.dart';
import 'package:do_an_mon_hoc/screens/details/components/counter_with_fav_btn.dart';
import 'package:do_an_mon_hoc/screens/details/components/description.dart';
import 'package:do_an_mon_hoc/screens/details/components/product_title_with_image.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final SanPham sanPham;

  const Body({Key? key, required this.sanPham}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: kDefaultPaddin / 2),
                      Description(sanPham: sanPham),
                      SizedBox(height: kDefaultPaddin / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: kDefaultPaddin / 2),
                      AddToCart(sanpham: sanPham)
                    ],
                  ),
                ),
                ProductTitleWithImage(sanPham: sanPham)
              ],
            ),
          )
        ],
      ),
    );
  }
}