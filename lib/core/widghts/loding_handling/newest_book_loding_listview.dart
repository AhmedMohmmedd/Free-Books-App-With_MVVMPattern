import 'package:bookly/core/widghts/loding_handling/newest_book_loding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NewestBookLodingListView extends StatelessWidget {
  const NewestBookLodingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: 5,
            itemBuilder: (context, index) {
              return const Padding(
                  padding:  EdgeInsets.symmetric(vertical: 10),
                  child: NewestBookLoding(),
                  );
            },
          );
  }
}