import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentaion/manger/featured_books_cubit/featuerd_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widghts/custom_errWidght.dart';
import '../../../../../core/widghts/custom_loding_indicator.dart';
import 'custom_book_item.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatuerdBooksCubit, FeatuerdBooksState>(
      builder: (context, state) {
        if (state is FeatuerdBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                itemCount: state.books.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(
                          AppRouter.KBookDatailsView,
                          extra: state.books[index],
                        );
                      },
                      child: CustomBookImage(
                        imageUrl: state.books[index].volumeInfo.imageLinks
                                ?.thumbnail ??
                            '',
                      ),
                    ),
                  );
                }),
          );
        } else if (state is FeatuerdBooksFailure) {
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
