import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentaion/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentaion/views/widgets/book_datalis_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDatailsView extends StatefulWidget {
  const BookDatailsView({super.key, required this.bookModel, });//required this.bookModel
  final BookModel bookModel;
  @override
  State<BookDatailsView> createState() => _BookDatailsViewState();
}

class _BookDatailsViewState extends State<BookDatailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
      categor: widget.bookModel.volumeInfo.categories?[0]??'computer scince',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: BookDatalisViewBody(bookModel: widget.bookModel,),
      ),
    );
  }
}
