// ignore_for_file: file_names

import 'package:do_an_mon_hoc/model/sanpham.dart';

class Cart {
  final SanPham sanpham;
  final int numOfItem;

  Cart({ this.sanpham,  this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [
  Cart(sanpham: sanphams[0], numOfItem: 2),
  Cart(sanpham: sanphams[1], numOfItem: 1),
  Cart(sanpham: sanphams[3], numOfItem: 1),
];
