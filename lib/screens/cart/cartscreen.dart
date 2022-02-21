import 'package:do_an_mon_hoc/components/coustom_bottom_nav_bar.dart';
import 'package:do_an_mon_hoc/components/enums.dart';
import 'package:do_an_mon_hoc/constants.dart';
import 'package:do_an_mon_hoc/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 130,
            child:Padding(
              padding: EdgeInsets.only(bottom:24,left: 16,right:16
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: (){
                    Get.back();
                  },
                   icon: Icon(
                     Icons.arrow_back_ios,
                     color: Colors.black,
                   ),
                   ),
                   CustomTextt(
                     text:'Giỏ hàng',
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
          Expanded(child: Padding(
            padding: EdgeInsets.only(top:74,right:16,left:16),
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context,index){
                return Dismissible(
                  key:Key(""),
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: 33),
                    child: Icon(
                      Icons.delete_forever,
                      color: Colors.white,
                      size: 40,),
                  ),
                  onDismissed: (value){
                  },
                  child: Row(
                    children:[
                      Image.asset(
                        "assets/images/samsung.png",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                        ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextt(
                            text:"SamSung Galaxy S10 Plus",
                            fontSize:16,
                          ),
                          CustomTextt(
                            text:"\$${5000.toString()}",
                            fontSize:16,
                            color: primaryColor,
                          ),
                          SizedBox(height:16),
                          Container(
                            height: 30,
                            width: 90,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.grey.shade300,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    child:Icon(
                                      Icons.remove,
                                      size:20
                                      ),
                                      onTap: (){},
                                  ),
                                  CustomTextt(
                                    text:"10",
                                    fontSize: 16,
                                    alignment: Alignment.center,
                                  ),
                                  GestureDetector(
                                    child:Icon(
                                      Icons.add,
                                      size:20
                                      ),
                                      onTap: (){},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              }, itemCount: 5,
               separatorBuilder: (context,index)=>SizedBox(height: 16),
            ),
          ),
          ),
          Material(
                    elevation: 12,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30, vertical: 17),
                      height: 84,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomTextt(
                                text: 'Tổng',
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                              CustomTextt(
                                text: '\$${25000.toString()}',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: primaryColor,
                              ),
                            ],
                          ),
                          Container(
                            height: 50,
                            width: 146,
                            child: CustomButton(
                              'Thanh toán',
                              () {             
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.home),
    );
  }
}