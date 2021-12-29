import 'package:do_an_mon_hoc/components/size_config.dart';
import 'package:do_an_mon_hoc/model/sanpham.dart';
import 'package:do_an_mon_hoc/screens/details/details_screen.dart';
import 'package:do_an_mon_hoc/screens/home/components/item_card.dart';
import 'package:flutter/material.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Sản phẩm nổi bật", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: [
        //       ...List.generate(
        //         demoProducts.length,
        //         (index) {
        //           return SizedBox
        //               .shrink(); // here by default width and height is 0
        //         },
        //       ),
        //       SizedBox(width: getProportionateScreenWidth(20)),
        //     ],
        //   ),
        // ),
        // Expanded(
        //   child:Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 20),
        //     child: GridView.builder(
        //       itemCount: 6,

        //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2,
        //           mainAxisSpacing: 20,
        //           crossAxisSpacing: 20,
        //           childAspectRatio: 0.75,
        //           ),
        //            itemBuilder: (context, index) => ItemCard(
        //               sanpham: sanphams[index],
        //               press: () => Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                     builder: (context) => DetailsScreen(
        //                       sanPham: sanphams[index],
        //                     ),
        //                   )),
        //             )),
        // ),
        //  ),
      ],
    );
  }
}
