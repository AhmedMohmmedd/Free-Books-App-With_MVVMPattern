import 'package:bookly/features/home/presentaion/views/widgets/book_datalis_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BookDatailsView extends StatelessWidget {
  const BookDatailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BookDatalisViewBody(),
        
      ),
    );
  }
}
