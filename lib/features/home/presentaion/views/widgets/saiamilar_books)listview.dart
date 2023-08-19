import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widghts/custom_errWidght.dart';
import 'package:bookly/core/widghts/custom_loding_indicator.dart';
import 'package:bookly/features/home/presentaion/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';
import 'custom_book_item.dart';

class SaiamilarBookListView extends StatelessWidget {
  const SaiamilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.KBookDatailsView,
                          extra: state.books[index]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CustomBookImage(
                        imageUrl: state.books[index].volumeInfo.imageLinks
                                ?.thumbnail ??
                            AssetsData.nullImage,
                      ),
                    ),
                  );
                }),
          );
        } else if (state is SimilarBooksFualier) {
          return customErrWidght(errMasseg: state.errMessage);
        } else {
          return const customLodingIndicator();
        }
      },
    );
  }
}
