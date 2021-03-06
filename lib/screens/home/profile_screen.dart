import 'package:do_an_mon_hoc/components/controlles.dart';
import 'package:do_an_mon_hoc/components/coustom_bottom_nav_bar.dart';
import 'package:do_an_mon_hoc/components/enums.dart';
import 'package:do_an_mon_hoc/screens/details/details_screen.dart';
import 'package:do_an_mon_hoc/screens/home/notifications_screen.dart';
import 'package:do_an_mon_hoc/screens/home/order_history_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (
        SingleChildScrollView(
          child: Padding(
                  padding: EdgeInsets.only(top: 58, right: 16, left: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage:
                                AssetImage('assets/images/logo.png'),
                                foregroundImage: userController.nguoiDung.value.image!= ""
                                ?
                                NetworkImage(
                                  "\$${userController.nguoiDung.value.image}",
                                ):null,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: [
                              CustomTextt(
                                text: userController.nguoiDung.value.email,                          
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              CustomTextt(
                                text: userController.nguoiDung.value.name,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      CustomListTile(
                        iconName: '1',
                        title: 'Ch???nh s???a th??ng tin',
                        onTapFn: () {
                        },
                      ),
                      CustomListTile(
                        iconName: '4',
                        title: 'L???ch s??? giao d???ch',
                        onTapFn: () {
                           Get.to(OrderHistoryScreen());
                        },
                      ),                 
                      CustomListTile(
                        iconName: '5',
                        title: 'Th??ng b??o',
                        onTapFn: () {
                          Get.to(NotificationsScreen());
                        },
                      ),
                      CustomListTile(
                        iconName: '6',
                        title: '????ng xu???t',
                        onTapFn: () {
                          userController.signOut();
                        },
                      ),
                    ],
                  ),
                ),
        )
      ),
        bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.profile),
    );
  }
}
class CustomListTile extends StatelessWidget {
  final String iconName;
  final String title;
  final VoidCallback onTapFn;

  const CustomListTile({
     this.iconName,
     this.title,
     this.onTapFn,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTapFn,
          leading: Image.asset(
            'assets/icons/menu_icons/$iconName.png',
            height: 40,
            width: 40,
          ),
          title: CustomTextt(
            text: title,
            fontSize: 18,
          ),
          trailing: title == 'Log Out'
              ? null
              : Icon(
                  Icons.navigate_next,
                  color: Colors.black,
                ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
