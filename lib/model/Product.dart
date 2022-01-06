// class Product{
//   static const ID = "Id";
//   static const IMAGE = "Image";
//   static const NAME = "Name";
//   static const BRAND = "Brand";
//   static const PRICE = "Price";

//    String Id;
//    String Image;
//    String Name;
//    String Brand;
//    double Price;

//   Product({this.Id, this.Image, this.Name, this.Brand, this.Price});

//   Product.fromMap(Map<String, dynamic> data){
//     Id = data[Id];
//     Image = data[Image];
//     Name = data[Name];
//     Brand = data[Brand];
//     Price = data[Price].toDouble();
//   }
// }
import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Iphone 7",
      price: 234,
      size: 64,
      description: dummyText,
      image: "assets/images/iphone_7.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Iphone X",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/iphone_x.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "SamSung Galaxy",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/samsung_old.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Xiaomi",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/mi1.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Iphone 8",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/phone1.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Iphone 12",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/phone1.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
