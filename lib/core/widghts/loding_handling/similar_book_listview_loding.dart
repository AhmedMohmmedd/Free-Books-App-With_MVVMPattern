import 'package:bookly/core/widghts/loding_handling/featuerd_book_loding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shimmer/shimmer.dart';

class similarBookLoding extends StatelessWidget {
  const similarBookLoding({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
       baseColor: Colors.grey[400]!,
    highlightColor: Colors.grey[300]!,
      child: Row(
        children: [
          featuerd_book_loding_item(
            height: MediaQuery.of(context).size.height * .17,
          ),
          const SizedBox(
            width: 16,
          ),
          featuerd_book_loding_item(
            height: MediaQuery.of(context).size.height * .17,
          ),
          const SizedBox(
            width: 16,
          ),
          featuerd_book_loding_item(
            height: MediaQuery.of(context).size.height * .17,
          ),
          const SizedBox(
            width: 16,
          ),
          SizedBox(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
              child: Container(
                width: 10,
                height: 128,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
