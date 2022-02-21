import 'package:do_an_mon_hoc/constants.dart';
import 'package:do_an_mon_hoc/controllers/productController.dart';
import 'package:do_an_mon_hoc/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListProductScreen extends StatelessWidget{
  ListProductScreen({Key key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      builder:(controller)=>
       Container(
        height: 320,
        child: ListView.separated(
          scrollDirection:Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                 Get.to(ProductDetailsScreen(controller.products[index]),);
              },
              child: Container(
                width: 164,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                    ),
                    height: 240,
                    width: 164,
                    child: Image.network(controller.products[index].Image,
                    fit: BoxFit.cover,
                    ),
                    ),
                    Text(controller.products[index].Name,
                    style: TextStyle(fontSize: 16),
                    ),
                    Text('\$${controller.products[index].Price}',
                    style: TextStyle(fontSize: 16,color: primaryColor),
                    ),
                  ],
                ),
              ),
            );
        }, separatorBuilder: (context,index) {
          return SizedBox(
            width: 15,
          );
          },
        ),
      ),
    );
  }
}