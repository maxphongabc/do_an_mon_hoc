import 'package:flutter/material.dart';
import 'package:get/get.dart';

showLoading(){
  Get.defaultDialog(
    title: "Đang tải...",
    content: CircularProgressIndicator(),
    barrierDismissible: false,
    textCancel: "Hủy"
  );
}

dismissLoadingWidget(){
  Get.back();
}