import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/home_repo.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());
  final HomeRepo homeRepo;

  Future<void> featchNewestBooks() async {
    emit(NewsetBooksLoding());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
        (failure) => {
              emit(NewsetBooksFailuer(failure.errMassage)),
            },
        (books) => {
              emit(NewsetBooksSuccess(books)),
            });
  }
}
