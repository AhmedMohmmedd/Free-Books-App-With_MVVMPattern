import 'package:bloc/bloc.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featuerd_books_state.dart';

class FeatuerdBooksCubit extends Cubit<FeatuerdBooksState> {
  FeatuerdBooksCubit(this.homeRepo) : super(FeatuerdBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeatuerdBooksLoding());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeatuerdBooksFailure(failure.errMassage));
    }, (books) {
      emit(FeatuerdBooksSuccess(books));
    });
  }

  fetchNewestBooks() {}
}
