
import 'package:bookly/core/widghts/loding_handling/custom_loding_contener.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NewestBookLoding extends StatelessWidget {
  const NewestBookLoding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Shimmer.fromColors(
        baseColor: Colors.grey[400]!,
    highlightColor: Colors.grey[300]!,
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            Container(
              width: 90,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  testContener(
                    w: 200,
                    h: 20,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  testContener(
                    w: 200,
                    h: 20,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  testContener(
                    w: 200,
                    h: 15,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      testContener(
                        w: 50,
                        h: 15,
                      ),
                      const Spacer(),
                      testContener(
                        w: 20,
                        h: 20,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      testContener(
                        w: 70,
                        h: 15,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}