import 'package:do_an_mon_hoc/constants.dart';
import 'package:do_an_mon_hoc/model/sanpham.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.sanPham,
  }) : super(key: key);

  final SanPham sanPham;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        sanPham.Mo_Ta,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
