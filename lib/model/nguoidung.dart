// ignore_for_file: unused_import, non_constant_identifier_names
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NguoiDung{
  static const ID = "id";
  static const NAME = "name";
  static const EMAIL = "email";
  String id;
   String name;
   String email;
  NguoiDung({  
     this.id, this.name, this.email
  });
  NguoiDung.fromSnapshot(DocumentSnapshot snapshot) {
    name = snapshot.data()[NAME];
    email = snapshot.data()[EMAIL];
    id = snapshot.data()[ID];
  }
}