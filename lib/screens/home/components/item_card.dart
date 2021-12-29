import 'package:do_an_mon_hoc/constants.dart';
import 'package:do_an_mon_hoc/model/sanpham.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final SanPham sanpham;
  final Function press;
  const ItemCard({
     Key? key,
    required this.sanpham,
     required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              // For  demo we use fixed height  and width
              // Now we dont need them
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${sanpham.Id}",
                child: Image.asset(sanpham.Hinh_Anh),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              // products is out demo list
              sanpham.Ten_Sp,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${sanpham.Gia}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
