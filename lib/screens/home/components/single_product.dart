// import 'package:do_an_mon_hoc/components/custom_text.dart';
// import 'package:do_an_mon_hoc/model/Product.dart';
// import 'package:flutter/material.dart';

// class SingleProductWidget extends StatelessWidget {
//   final Product product;

//   const SingleProductWidget({Key key, this.product}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(15),
//           boxShadow: [
//             BoxShadow(
//                 color: Colors.grey.withOpacity(.5),
//                 offset: Offset(3, 2),
//                 blurRadius: 7)
//           ]),
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ClipRRect(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(15),
//                   topRight: Radius.circular(15),
//                 ),
//                 child: Image.network(
//                   product.Image,
//                   width: double.infinity,
//                 )),
//           ),
//           CustomText(
//             text: product.Name,
//             size: 18,
//             weight: FontWeight.bold,
//           ),
//           CustomText(
//             text: product.Brand,
//             color: Colors.grey,
//           ),
//           SizedBox(
//             height: 5,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 8.0),
//                 child: CustomText(
//                   text: "\$${product.Price}",
//                   size: 22,
//                   weight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(
//                 width: 30,
//               ),
//               IconButton(
//                   icon: Icon(Icons.add_shopping_cart),
//                   onPressed: () {
//                     // cartController.addProductToCart(product);
//                   })
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
