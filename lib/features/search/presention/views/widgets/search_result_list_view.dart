import 'package:bookly/features/search/presention/manger/search_result_cubit/search_result_cubit.dart';
import 'package:bookly/features/search/presention/views/widgets/search_result_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widghts/custom_errWidght.dart';
import '../../../../../core/widghts/custom_loding_indicator.dart';
import '../../../../home/presentaion/views/widgets/newest_books_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchResultCubit, SearchResultState>(
      builder: (context, state) {
        if (state is SearchResultSuccess) {
          return ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  // child: BookListViewItem(),
                  child: SearchResultItem(
                    bookModel:state.books[index] ,
                  ),
                );
              });
        } else if (state is SearchResultFualier) {
          return customErrWidght(
            errMasseg: state.errMessage,
          );
        } else {
          return const customLodingIndicator();
        }
      },
    );
    
  }
}
