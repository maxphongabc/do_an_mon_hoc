import 'package:cloud_firestore/cloud_firestore.dart';
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
  Users({  
     this.id, this.name, this.email,this.image
  });
  Users.fromSnapshot(DocumentSnapshot snapshot) {
    name = snapshot.data()[NAME];
    email = snapshot.data()[EMAIL];
    id = snapshot.data()[ID];
  }
}