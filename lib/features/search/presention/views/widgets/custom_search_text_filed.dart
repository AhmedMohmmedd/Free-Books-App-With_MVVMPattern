import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/data/models/book_model/book_model.dart';
import '../../../data/repos/search_repo_impl.dart';
import '../../manger/search_result_cubit/search_result_cubit.dart';

class CustomSearchTextFiled extends StatelessWidget {
  CustomSearchTextFiled({
    super.key,
    this.searchItem,
  });
  String? searchItem;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        searchItem = value;
      },
      onSubmitted: (value) {
        searchItem = value;
        BlocProvider.of<SearchResultCubit>(context)
            .fetchSearchResultBooks(searchItem: value);
        BlocProvider.of<SearchResultCubit>(context).searchItem = value;
      },
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        hintText: 'Search',
        suffixIcon: GestureDetector(
          onTap: () {
            BlocProvider.of<SearchResultCubit>(context)
                .fetchSearchResultBooks(searchItem: searchItem);
            BlocProvider.of<SearchResultCubit>(context).searchItem = searchItem;
          },
          child: const Opacity(
            opacity: .5,
            child: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
