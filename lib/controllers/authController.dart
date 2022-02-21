import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_an_mon_hoc/constants/app_constants.dart';
import 'package:do_an_mon_hoc/constants/firebase.dart';
import 'package:do_an_mon_hoc/helper/showLoading.dart';
import 'package:do_an_mon_hoc/model/UserModel.dart';
import 'package:do_an_mon_hoc/screens/home/home_screen.dart';
import 'package:do_an_mon_hoc/screens/sign_in/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController instance = Get.find();
  Rx<User> firebaseUser;
  RxBool isLoggedIn = false.obs;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController password2= TextEditingController();
  String usersCollection = "User";
  Rx<Users> nguoiDung = Users().obs;
  Rxn<User> _user = Rxn<User>();
  String get user => _user?.value?.email;

  @override
  void onReady() {
    super.onReady();
    firebaseUser = Rx<User>(auth.currentUser);
    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User user) {
    if (user == null) {
      Get.offAll(() => AuthenticationScreen());
    } else {
      nguoiDung.bindStream(listenToUser());
      Get.offAll(() => HomeScreen());
    }
  }

  void signIn() async {
    try {
      showLoading();
      await auth
          .signInWithEmailAndPassword(
              email: email.text.trim(), password: password.text.trim())
          .then((result) {
        _clearControllers();
      });
    } catch (e) {
      debugPrint(e.toString());
      Get.snackbar("Đăng nhập thất bại", "Thử lại");
    }
  }

  void signUp() async {
    try {
      showLoading();
         await auth
            .createUserWithEmailAndPassword(
                email: email.text.trim(), password: password.text.trim())
            .then((result) {
          String _userId = result.user.uid;
          _addUserToFirestore(_userId);
          _clearControllers();
        });           
    } catch (e) {
      debugPrint(e.toString());
      Get.snackbar("Đăng ký thất bại", "Thử lại");
      dismissLoadingWidget();
    }
  }

  void signOut() async {
    auth.signOut();
  }

  _addUserToFirestore(String userId) {
    firebaseFirestore.collection(usersCollection).doc(userId).set({
      "name": email.text.trim(),
      "id": userId,
      "email": email.text.trim(),
      "timestamp":FieldValue.serverTimestamp(),
       "cart": [],
      "image":"https://firebasestorage.googleapis.com/v0/b/doanmonhoc-98c69.appspot.com/o/user_image%2Fuser.png?alt=media&token=d55208e2-d96f-41c9-b99c-8aa14dbd6c4c",  
    });
  }

  _clearControllers() {
    name.clear();
    email.clear();
    password.clear();
  }

  updateUserData(Map<String, dynamic> data) {
    logger.i("UPDATED");
    firebaseFirestore
        .collection(usersCollection)
        .doc(firebaseUser.value.uid)
        .update(data);
  }

  Stream<Users> listenToUser() => firebaseFirestore
      .collection(usersCollection)
      .doc(firebaseUser.value.uid)
      .snapshots()
      .map((snapshot) => Users.fromSnapshot(snapshot));
}
