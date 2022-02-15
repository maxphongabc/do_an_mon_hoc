import 'package:do_an_mon_hoc/model/ProductModel.dart';
import 'package:do_an_mon_hoc/screens/details/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CategoryProductScreen extends StatelessWidget{
  String categoryName;
  List<ProductModel> products;
  CategoryProductScreen({this.categoryName,this.products});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 130,
            child: Padding(
              padding: EdgeInsets.only(bottom: 24,left: 16,right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: (){
                      Get.back();
                    },
                     icon:Icon(Icons.arrow_back_ios,
                     color: Colors.black,
                     ),
                     ),
                     CustomTextt(
                       text: categoryName,
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
            child:
            Padding(
              padding: EdgeInsets.only(right: 16,left: 16,bottom: 24),
              child: GridView.builder(
                padding: EdgeInsets.all(0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  mainAxisExtent: 320,
                ),
                 itemCount: products.length,
                 itemBuilder: (context,index){
                   return GestureDetector(
                     onTap: (){
                       Get.to(ProductDetailsScreen(products[index]),
                       );
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
                            child: Image.network(
                              products[index].Image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          CustomTextt(
                            text: products[index].Name,
                            fontSize:16,
                          ),
                          CustomTextt(
                            text: products[index].Name,
                            fontSize: 12,
                            color: Colors.grey,
                            maxLines: 1,
                          ),
                          CustomTextt(
                            text: "\$${products[index].Price}",
                            color: Colors.green,
                          ),
                        ],
                       ),
                     ),
                   );
                 },
            ),
             ),
          ),
        ],
      ),
    );
  }
}