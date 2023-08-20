import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presention/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../home/presentaion/views/widgets/newest_books_list_view_item.dart';
import 'custom_search_text_filed.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:   [
        const  SizedBox(
            height: 24,
          ),
          CustomSearchTextFiled( ),
      const    SizedBox(
            height: 16,
          ),
      const    Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
       const   SizedBox(
            height: 16,
          ),
       const   Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
