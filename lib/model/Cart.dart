import 'package:do_an_mon_hoc/model/sanpham.dart';

class Cart {
  final SanPham sanpham;
  final int numOfItem;

  Cart({required this.sanpham, required this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [
  Cart(sanpham: demoProducts[0], numOfItem: 2),
  Cart(sanpham: demoProducts[1], numOfItem: 1),
  Cart(sanpham: demoProducts[3], numOfItem: 1),
];
