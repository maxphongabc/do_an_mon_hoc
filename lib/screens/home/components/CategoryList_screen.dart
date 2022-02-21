import 'package:do_an_mon_hoc/controllers/productController.dart';
import 'package:do_an_mon_hoc/screens/home/category_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListCategoryScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      builder: (controller)=>Container(
      height: 90,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: controller.categories.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              Get.to(
                CategoryProductScreen(
                categoryName:controller.categories[index].name,
                products:controller.products
                .where((product)=>
                 controller.categories[index].name == product.Category,
                ).toList(),
              ));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  elevation: 1,
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    height: 60,
                    width: 60,
                    child: Padding(
                      padding: EdgeInsets.all(14),
                      child: Image.network(
                        controller.categories[index].image,
                      ),
                    ),
                  ),
                ),
                Text(controller.categories[index].name,style: TextStyle(fontSize: 16),),
              ],
            ),
          );
        }, separatorBuilder: (context,index) { 
          return SizedBox(width: 20,);
         },
      ),
      )
    );
    
  }
}
