import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentaion/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

import 'books_datalias_section.dart';
import 'custom_book_datails_appbar.dart';

class BookDatalisViewBody extends StatelessWidget {
  const BookDatalisViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children:  [
              const  CoustomBookDatailsAppBar(),
                BookDatalisSection(
                  book: bookModel             ),
              const  Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
              const  SimailarBooksSection(),
              const  SizedBox(
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
