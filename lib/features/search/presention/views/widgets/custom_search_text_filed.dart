import 'package:flutter/material.dart';

import '../../../../home/data/models/book_model/book_model.dart';
import '../../../data/repos/search_repo_impl.dart';
import '../../manger/search_result_cubit/search_result_cubit.dart';

class CustomSearchTextFiled extends StatelessWidget {
  const CustomSearchTextFiled({super.key,});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
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
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Opacity(
              opacity: .5,
              child: Icon(Icons.search),
            ),
          )),
    );
  }
}
