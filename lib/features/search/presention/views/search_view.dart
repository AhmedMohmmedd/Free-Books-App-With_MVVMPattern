import 'package:bookly/features/search/presention/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../home/presentaion/manger/similar_books_cubit/similar_books_cubit.dart';
import '../manger/search_result_cubit/search_result_cubit.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {
    BlocProvider.of<SearchResultCubit>(context).fetchSearchResultBooks(
  
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SearchViewBody()),
    );
  }
}
