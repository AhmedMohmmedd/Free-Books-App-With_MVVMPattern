
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class testContener extends StatelessWidget {
  testContener({super.key, this.w, this.h});
  double? w;
  double? h;
  @override
  Widget build(BuildContext context)    {
    // return Shimmer.fromColors(
    //  baseColor: Colors.grey[400]!,
    // highlightColor: Colors.grey[300]!,
    // child:
    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(8),
      ),
    // ),
    );
  }
}
