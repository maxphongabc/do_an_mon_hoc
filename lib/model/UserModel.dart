import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_an_mon_hoc/model/CartModel.dart';
class Users{
  static const ID = "id";
  static const NAME = "name";
  static const EMAIL = "email";
  static const CART = "cart";
  static const Image = "image";
  String id;
   String name;
   String image;
   String email;
    List<CartModel> cart;
  Users({  
     this.id, this.name, this.email,this.image
  });
  Users.fromSnapshot(DocumentSnapshot snapshot) {
    name = snapshot.data()[NAME];
    email = snapshot.data()[EMAIL];
    id = snapshot.data()[ID];
    cart = _convertCartItems(snapshot.data()[CART] ?? []);
  }
  toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
       'image': image,
    };
  }
  Users.fromJson(Map<dynamic, dynamic> map) {
    id = map['userId'];
    email = map['email'];
    name = map['name'];
    image = map['image'];
  }
  List<CartModel> _convertCartItems(List cartFomDb){
    List<CartModel> _result = [];
    if(cartFomDb.length > 0){
      cartFomDb.forEach((element) {
      _result.add(CartModel.fromMap(element));
    });
    }
    return _result;
  }
}