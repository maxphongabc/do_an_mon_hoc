import 'package:do_an_mon_hoc/components/controlles.dart';
import 'package:do_an_mon_hoc/components/custom_text.dart';
import 'package:do_an_mon_hoc/constants.dart';
import 'package:do_an_mon_hoc/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';



class HomeScreen  extends StatelessWidget {
  const HomeScreen ({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
    ),
              backgroundColor: Colors.white,
        drawer: Drawer(
          child: ListView(
            children: [
              Obx(()=>UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                  accountEmail: Text(userController.nguoiDung.value.email?? ""), accountName: null,)),

              ListTile(
                leading: Icon(Icons.book),
                title: CustomText(
                  text: "Lịch sử giao dịch",
                ),
                onTap: () {
                //  paymentsController.getPaymentHistory();
                },
              ),
              ListTile(
                onTap: () {
                  userController.signOut();
                },
                leading: Icon(Icons.exit_to_app),
                title: Text("Đăng xuất"),
              )
            ],
          ),
        ),
      body:  Body(),
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
