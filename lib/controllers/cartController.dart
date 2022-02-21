import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_an_mon_hoc/components/controlles.dart';
import 'package:do_an_mon_hoc/model/ProductModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class CartController extends GetxController{
  static CartController instance = Get.find();
  RxDouble totalCartPrice = 0.0.obs;

  @override
  void onReady() {
    super.onReady();
    ever(userController.nguoiDung,null);
  }
  void addProductToCart(ProductModel product) {
    try {
      if (_isItemAlreadyAdded(product)) {
        Get.snackbar("Kiểm tra giỏ hàng", "${product.Name} sản phẩm đã thêm");
      } else {
        String itemId = Uuid().toString();
        userController.updateUserData({
          "cart": FieldValue.arrayUnion([
            {
              "id": itemId,
              "productId": product.Id,
              "name": product.Name,
              "quantity": 1,
              "price": product.Price,
              "image": product.Image,
              "cost": product.Price
            }
          ])
        });
        Get.snackbar("Sản phẩm", "${product.Name} đã được thêm vào giỏ hàng");
      }
    } catch (e) {
      Get.snackbar("Lỗi", "Thêm sản phẩm không thành công");
      debugPrint(e.toString());
    }
  }
   bool _isItemAlreadyAdded(ProductModel product) =>
      userController.nguoiDung.value.cart
          .where((item) => item.productId == product.Id)
          .isNotEmpty;
}