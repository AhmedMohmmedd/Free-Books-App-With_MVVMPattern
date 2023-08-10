import 'package:bookly/features/home/presentaion/views/widgets/saiamilar_books)listview.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SimailarBooksSection extends StatelessWidget {
  const SimailarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16,
        ),
        const SaiamilarBookListView(),
      ],
    );
  }
}