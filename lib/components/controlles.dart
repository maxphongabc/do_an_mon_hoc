import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_an_mon_hoc/controllers/appController.dart';
import 'package:do_an_mon_hoc/controllers/authController.dart';
import 'package:do_an_mon_hoc/model/UserModel.dart';

AppController appController = AppController.instance;
UserController userController = UserController.instance;
class FirestoreUser {
  final CollectionReference _usersCollection =
      FirebaseFirestore.instance.collection('users');

  addUserToFirestore(Users userModel) async {
    await _usersCollection.doc(userModel.id).set(userModel.toJson());
  }

  Future<DocumentSnapshot> getUserFromFirestore(String uid) async {
    return await _usersCollection.doc(uid).get();
  }
}