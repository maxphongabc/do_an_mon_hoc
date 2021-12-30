
import 'package:do_an_mon_hoc/constants.dart';
import 'package:do_an_mon_hoc/model/sanpham.dart';
import 'package:do_an_mon_hoc/screens/home/components/categories.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,   
      children: <Widget>[
        Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Text("IPHONE",
        style: Theme.of(context)
        .textTheme
        .headline5!.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      const Categories(),
      Expanded(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: GridView.builder(
          itemCount: sanphams.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: kDefaultPaddin,
          crossAxisSpacing: kDefaultPaddin,
          childAspectRatio: 0.75,
          ), 
          itemBuilder: (context,index)=> ItemCart(product: sanphams[index])),
      )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 4),
          child: Text(sanphams[0].Ten_Sp,
          style: const TextStyle(color: kTextLightColor),
          ),
        ),
        const Text("\n 22.700.000đ",
        style: TextStyle(fontWeight: FontWeight.bold),)
      ],
    );
  }
}

class ItemCart extends StatelessWidget {
  final SanPham product;

  const ItemCart({
  Key? key,
  required this.product, 

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
       crossAxisAlignment: CrossAxisAlignment.center, 
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(kDefaultPaddin),
          decoration: BoxDecoration (color: sanphams[0].color,
          borderRadius: BorderRadius.circular(16),

          ),
          child:  Image.asset(sanphams[0].Hinh_Anh),
        ),
      ],
    );
  }
}
