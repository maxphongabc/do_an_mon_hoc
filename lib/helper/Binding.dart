import 'package:do_an_mon_hoc/controllers/appController.dart';
import 'package:do_an_mon_hoc/controllers/authController.dart';
import 'package:do_an_mon_hoc/controllers/productController.dart';
import 'package:get/get.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AppController());
    Get.lazyPut(() => UserController());
    Get.lazyPut(() => ProductController());
  }
}