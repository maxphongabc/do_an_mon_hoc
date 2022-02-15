import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_an_mon_hoc/model/CategoryModel.dart';

import 'package:do_an_mon_hoc/model/ProductModel.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{
  List<ProductModel> _products=[];
  List<CategoryModel> _categories = [];
  List<ProductModel> get products => _products;
  List<CategoryModel> get categories => _categories;
  bool _loading = false;
  bool get loading => _loading;
  @override
  void onInit() {
    super.onInit();
     _getProductsFromFireStore();
     _getCategoriesFromFireStore();
  }
 
  _getProductsFromFireStore() async{
    List<QueryDocumentSnapshot> productsSnapshot =
    await FirestoreHome().getProductsFromFirestore();
    productsSnapshot.forEach((product) { 
      // ignore: unnecessary_cast
      _products.add(ProductModel.fromJson(product.data()as Map<String,dynamic>));
    });
    update();
  }
  _getCategoriesFromFireStore() async {
    _loading = true;
    List<QueryDocumentSnapshot> categoriesSnapshot =
        await FirestoreHome().getCategoriesFromFirestore();
    categoriesSnapshot.forEach((category) {
      _categories
          // ignore: unnecessary_cast
          .add(CategoryModel.fromJson(category.data() as Map<String, dynamic>));
    });
    _loading = false;
    update();
  }
}
class FirestoreHome{
   final CollectionReference _productsCollection =
      FirebaseFirestore.instance.collection('products');
       final CollectionReference _categoriesCollection =
      FirebaseFirestore.instance.collection('categories');

  Future<List<QueryDocumentSnapshot>> getProductsFromFirestore() async {
    var products = await _productsCollection.get();
    return products.docs;
  }
   Future<List<QueryDocumentSnapshot>> getCategoriesFromFirestore() async {
    var categories = await _categoriesCollection.get();
    return categories.docs;
  }
}