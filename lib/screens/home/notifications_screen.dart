import 'package:do_an_mon_hoc/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 130,
            child: Padding(
              padding:EdgeInsets.only(bottom: 24,left:16,right: 16,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    onPressed: () {
                    Get.back();
                    },
                     icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                  CustomTextt(
                    text: 'Thông báo',
                    fontSize: 20,
                    alignment: Alignment.bottomCenter,
                  ),
                  Container(
                    width: 24,
                  ),
                ],
              ),
          ),
          ),
              Expanded(
            child: Center(
              child: CustomTextt(
                text: 'Bạn chưa có thông báo nào.',
                fontSize: 16,
                color: Colors.black,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}