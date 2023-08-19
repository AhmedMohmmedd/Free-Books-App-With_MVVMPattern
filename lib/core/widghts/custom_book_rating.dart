import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/styles.dart';

class CustomBookRating extends StatelessWidget {
  const CustomBookRating({super.key, required this.rating, required this.bookCount});
//  final MainAxisAlignment? mainAxisAlignment;
  final String rating;
  final int bookCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        //  Text(
        //   '$rating',
        //   style: Styles.textStyle16,
        // ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '($bookCount page)',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        )
      ],
    );;
  }
}