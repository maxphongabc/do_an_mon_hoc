import 'package:do_an_mon_hoc/components/size_config.dart';
import 'package:do_an_mon_hoc/screens/home/components/categories.dart';
import 'package:do_an_mon_hoc/screens/home/components/discount_banner.dart';
import 'package:do_an_mon_hoc/screens/home/components/home_header.dart';
import 'package:do_an_mon_hoc/screens/home/components/popular_product.dart';
import 'package:do_an_mon_hoc/screens/home/components/special_offers.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            DiscountBanner(),
            Categories(),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}