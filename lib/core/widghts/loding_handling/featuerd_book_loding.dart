import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shimmer/shimmer.dart';

class FeatyerdBookLoding extends StatelessWidget {
  const FeatyerdBookLoding({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
       baseColor: Colors.grey[400]!,
    highlightColor: Colors.grey[300]!,
      child: Row(
        children: [
           featuerd_book_loding_item(
            height: MediaQuery.of(context).size.height * .3,
           ),
          const SizedBox(
            width: 16,
          ),
           featuerd_book_loding_item(
            height: MediaQuery.of(context).size.height * .3,
           ),
          const SizedBox(
            width: 16,
          ),
          SizedBox(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
              child: Container(
                width: 40,
                height: 230,
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

class featuerd_book_loding_item extends StatelessWidget {
   featuerd_book_loding_item({
    super.key,
    this.height
  });
double? height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.5 / 4,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
            ),
          ),
        ),
      ),
    );
  }
}
