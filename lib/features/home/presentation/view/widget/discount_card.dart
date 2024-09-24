// import 'package:flutter/material.dart';
// import 'package:fruits_hub/core/utils/app_text_styles.dart';
// import 'package:fruits_hub/generated/l10n.dart';
// import 'package:svg_flutter/svg.dart';

// class DiscountCard extends StatelessWidget {
//   final String title;
//   final double discountPercentage;
//   final String imageUrl;
//   final VoidCallback onButtonPressed;
//   final Color color;

//   const DiscountCard(
//       {super.key,
//       required this.title,
//       required this.discountPercentage,
//       required this.imageUrl,
//       required this.onButtonPressed,
//       required this.color});    
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8),
//       child: SizedBox(
//         width: MediaQuery.of(context).size.width,
//         child: Card(
//           elevation: 4,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(1),
//           ),
//           child: Row(
//             children: [
//               // Left Container - Discount Info
//               Expanded(
//                 flex: 2, // Adjust flex as needed
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: color,
//                     borderRadius: const BorderRadius.only(
//                       topRight: Radius.circular(20),
//                       bottomRight: Radius.circular(20),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           title,
//                           style: TextStyles.regular13
//                               .copyWith(color: Colors.white),
//                         ),
//                         const SizedBox(height: 8),
//                         Text(
//                           '${discountPercentage.toStringAsFixed(0)}% ${S.of(context).discount}',
//                           style:
//                               TextStyles.bold19.copyWith(color: Colors.white),
//                         ),
//                         const SizedBox(height: 16),
//                         ElevatedButton(
//                           onPressed: onButtonPressed,
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(5),
//                             ),
//                           ),
//                           child: Text(S.of(context).shopNow,
//                               style: TextStyles.bold13),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),

//               // Right Container - Image
//               Expanded(
//                   flex: 3, // Adjust flex as needed
//                   child: ClipRRect(
//                     borderRadius: const BorderRadius.only(
//                         topRight: Radius.circular(10),
//                         bottomRight: Radius.circular(10)),
//                     child: SvgPicture.asset(
//                       imageUrl,
//                       height: 150,
//                       width: double.infinity,
//                       fit: BoxFit.cover,
//                     ),
//   ))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }