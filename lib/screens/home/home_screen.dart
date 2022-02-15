import 'package:do_an_mon_hoc/components/coustom_bottom_nav_bar.dart';
import 'package:do_an_mon_hoc/components/enums.dart';
import 'package:do_an_mon_hoc/controllers/productController.dart';
import 'package:do_an_mon_hoc/screens/details/details_screen.dart';
import 'package:do_an_mon_hoc/screens/home/category_screen.dart';
import 'package:do_an_mon_hoc/screens/home/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ProductController>(
        init: Get.find<ProductController>(),
        builder: (controller)=>controller.loading?Center(child: CircularProgressIndicator(),)
        : SingleChildScrollView(
          padding: EdgeInsets.only(
            top: 65,bottom: 14,right: 16,left: 16
          ),
          child: Column(
            children: [
              Container(
                height: 49,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(45),
                ),
                child: TextFormField(
                  decoration:InputDecoration(
                    border: InputBorder.none,
                    hintText: "Tìm kiếm...",
                    prefixIcon:Icon(
                      Icons.search,
                      color: Colors.black,
                      ),
                  ),
                  onFieldSubmitted: (value){
                    Get.to(SearchScreen(value));
                  },
                  ),
              ),           
              SizedBox(height: 44,),
                Text(
                "Danh mục",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
                ),
              SizedBox(height:19),
              ListCategoryScreen(),
              SizedBox(height: 50,),          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sản phẩm",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(
                          CategoryProductScreen(
                          categoryName:'Sản phẩm',
                          products: controller.products,
                        ));
                      },
                      child: Text(
                        "Xem tất cả",
                        style: TextStyle(fontSize: 16),
                        ),
                    ),
                ],
                ),
                SizedBox(height: 30,),
                ListProductScreen(),
                SizedBox(height: 30,),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Xiaomi",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(
                          CategoryProductScreen(
                          categoryName:'Sản phẩm',
                          products: controller.products,
                        ));
                      },
                      child: Text(
                        "Xem tất cả",
                        style: TextStyle(fontSize: 16),
                        ),
                    ),
                ],
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.home),
    );
  }
}
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
                    style: TextStyle(fontSize: 16),
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