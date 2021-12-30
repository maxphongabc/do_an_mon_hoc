import 'package:do_an_mon_hoc/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/body.dart';

class HomeScreen  extends StatelessWidget {
  const HomeScreen ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/back.svg")),
    actions: <Widget>[IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/search.svg",
    color:kTextColor,
    )),
    IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/cart.svg",
    color:kTextColor,
    )),
    const SizedBox(width: kDefaultPaddin / 2)
    ],
    );
  }
}