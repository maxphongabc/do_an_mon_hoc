// ignore_for_file: file_names
// import 'package:do_an_mon_hoc/constants/firebase.dart';
// import 'package:do_an_mon_hoc/model/Product.dart';
// import 'package:get/get.dart';

// class ProducsController extends GetxController {
//   static ProducsController instance = Get.find();
//   RxList<Product> products = RxList<Product>([]);
//   String collection = "products";

//   @override
//   onReady() {
//     super.onReady();
//     products.bindStream(getAllProducts());
//   }

//   Stream<List<Product>> getAllProducts() =>
//       firebaseFirestore.collection(collection).snapshots().map((query) =>
//           query.docs.map((item) => Product.fromMap(item.data())).toList());

// }