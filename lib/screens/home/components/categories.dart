import 'package:do_an_mon_hoc/constants.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({ Key key }) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Iphone","AirPods","Phụ kiện"];
  int selectedIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context,index)=>buildCategory(index)),
      ),
    );
  }

  Widget buildCategory(int index) => GestureDetector(
    onTap: (){
      setState(() {
        selectedIndex = index ;
      });
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(categories[index],
          style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: kTextColor,
          ),
          ),
          Container(
            margin: const EdgeInsets.only(top: kDefaultPaddin / 4),
            height: 2,
            width: 30,
            color: selectedIndex == index ? Colors.black : Colors.white,
          )
        ],
      ),
    ),
  );
}