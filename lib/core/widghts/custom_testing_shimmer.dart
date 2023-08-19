// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:go_router/go_router.dart';
// import 'package:shimmer/shimmer.dart';

// import '../../constants.dart';
// import '../utils/app_router.dart';
// import '../utils/assets.dart';
// import '../utils/styles.dart';

// class Shimmer extends StatelessWidget {
//   const Shimmer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Shimmer.fromColors(
//       baseColor: Colors.red,
//       highlightColor: Colors.yellow,
//       enabled: true,
//       child: const item(),
//     ),
//     );
//   }
// }

// class item extends StatelessWidget {
//   const item({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         GoRouter.of(context).push(AppRouter.KBookDatailsView);
//       },
//       child: SizedBox(
//         height: 125,
//         child: Row(
//           children: [
//             AspectRatio(
//               aspectRatio: 2.5 / 4,
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                   color: Colors.red,
//                   image: const DecorationImage(
//                       fit: BoxFit.fill,
//                       image: AssetImage(AssetsData.tsetImage)),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               width: 30,
//             ),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * .5,
//                     child: Text(
//                       'Harry Potter and the globle of fire',
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                       style: Styles.textStyle20
//                           .copyWith(fontFamily: kGTSectraFine),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 3,
//                   ),
//                   const Text(
//                     'J.E Rowling',
//                     style: Styles.textStyle14,
//                   ),
//                   const SizedBox(
//                     height: 3,
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         '19.99 ',
//                         style: Styles.textStyle20
//                             .copyWith(fontWeight: FontWeight.bold),
//                       ),
//                       const Spacer(),
//                       const BookRating(),
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class BookRating extends StatelessWidget {
//   const BookRating({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         const Icon(
//           FontAwesomeIcons.solidStar,
//           size: 14,
//           color: Color(0xffFFDD4F),
//         ),
//         const SizedBox(
//           width: 6.3,
//         ),
//         const Text(
//           '4.8',
//           style: Styles.textStyle16,
//         ),
//         const SizedBox(
//           width: 5,
//         ),
//         Opacity(
//           opacity: .5,
//           child: Text(
//             '245',
//             style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
//           ),
//         )
//       ],
//     );
//   }
// }



