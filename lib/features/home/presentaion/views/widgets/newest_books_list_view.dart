import 'package:bookly/core/widghts/custom_errWidght.dart';
import 'package:bookly/core/widghts/custom_loding_indicator.dart';
import 'package:bookly/features/home/presentaion/manger/newest_books_cubit/newset_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widghts/loding_handling/newest_book_loding.dart';
import '../../../../../core/widghts/loding_handling/newest_book_loding_listview.dart';
import 'newest_books_list_view_item.dart';

class NewsetBooksListView extends StatelessWidget {
  const NewsetBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.Books.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(
                    bookModel: state.Books[index],
                  ),
                  );
            },
          );
        } else if (state is NewsetBooksFailuer) {
          return customErrWidght(errMasseg: state.errMaseg);
        } else {
          return const NewestBookLodingListView();
        }
      },
    );
  }
}

