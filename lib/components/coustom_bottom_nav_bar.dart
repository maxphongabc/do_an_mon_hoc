import 'package:do_an_mon_hoc/components/enums.dart';
import 'package:do_an_mon_hoc/constants.dart';
import 'package:do_an_mon_hoc/screens/cart/cartscreen.dart';
import 'package:do_an_mon_hoc/screens/home/home_screen.dart';
import 'package:do_an_mon_hoc/screens/home/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
     this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    Color inActiveIconColor =  Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Shop Icon.svg",
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                   Get.to(HomeScreen()),
              ),
                 IconButton(
                icon: Icon(Icons.card_travel_outlined),
                onPressed: () {
                  Get.to(CartScreen());
                },
              ),
              IconButton(
                icon: Icon(Icons.person,),
                onPressed: () {
                  Get.to(ProfileScreen());
                },
              ),
            ],
          )),
    );
  }
}
