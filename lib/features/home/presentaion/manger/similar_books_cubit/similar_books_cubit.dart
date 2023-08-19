import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String categor}) async {//required String categor
    emit(SimilarBooksLoding());
    var result = await homeRepo.fetchSimilarBooks(category: categor);
    result.fold((failure) {
      emit(SimilarBooksFualier(failure.errMassage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}

