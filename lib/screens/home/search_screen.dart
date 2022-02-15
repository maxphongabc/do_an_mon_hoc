import 'package:do_an_mon_hoc/constants.dart';
import 'package:do_an_mon_hoc/controllers/productController.dart';
import 'package:do_an_mon_hoc/model/ProductModel.dart';
import 'package:do_an_mon_hoc/screens/details/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatefulWidget{
  final String searchValue;
  SearchScreen(this.searchValue);
  @override
  _SearchScreenState createState()=> _SearchScreenState();
}
class _SearchScreenState extends State<SearchScreen>{
  String _searchValue;
  
  @override
  void initState() {
     _searchValue = widget.searchValue.toLowerCase();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    List<ProductModel> _searchProducts = _searchValue==''
    ?[]
    :Get.find<ProductController>()
    .products.where(
      (product)=>product.Name.toLowerCase()
      .contains(_searchValue)).toList();
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
                     text:'Tìm kiếm...',
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height:49,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(45),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                ),
                initialValue: _searchValue,
                onFieldSubmitted: (value){
                  setState(() {
                    _searchValue = value.toLowerCase();
                  });
                },
                ),
            ),
          ),
          SizedBox(height: 24,),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 16,left: 16,bottom: 24),
              child: GetBuilder<ProductController>(
                init: Get.find<ProductController>(),
                builder: (controller)=>GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 16,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 320,
                  ),
                  itemCount: _searchProducts.length,
                  itemBuilder: (context,index){
                     return GestureDetector(
                       onTap:(){
                         Get.to(
                           ProductDetailsScreen(_searchProducts[index]),
                         );
                       },
                       child: Container(
                         width:164,
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
                               width:164,
                               child: Image.network(_searchProducts[index].Image,
                               fit: BoxFit.cover,
                               ),
                             ),
                             CustomTextt(
                               text: _searchProducts[index].Name,
                               fontSize: 16,
                             ),
                             CustomTextt(
                               text:_searchProducts[index].Category,
                               fontSize: 12,
                               color: Colors.grey,
                               maxLines: 1,
                             ),
                             CustomTextt(
                               text:'\$${_searchProducts[index].Price}',
                               fontSize: 16,
                               color: primaryColor,
                             ),
                           ],
                         ),
                       ),
                     );
                   },
                   ),
              ),
          ),
          ),
        ],
        ),
    );
  }
}