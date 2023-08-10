import 'package:bookly/features/home/presentaion/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

import 'books_datalias_section.dart';
import 'custom_book_datails_appbar.dart';

class BookDatalisViewBody extends StatelessWidget {
  const BookDatalisViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: const [
                 CoustomBookDatailsAppBar(),
                 BookDatalisSection(),
                 Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimailarBooksSection(),
                 SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}



