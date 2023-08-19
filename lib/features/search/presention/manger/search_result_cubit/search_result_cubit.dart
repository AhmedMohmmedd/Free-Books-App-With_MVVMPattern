import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../home/data/models/book_model/book_model.dart';
import '../../../../home/data/repos/home_repo.dart';
import '../../../data/repos/search_repo.dart';

part 'search_result_state.dart';

class SearchResultCubit extends Cubit<SearchResultState> {
  SearchResultCubit( this.searchRepo) : super(SearchResultInitial());

  final SearchRepo searchRepo;

  Future<void> fetchSearchResultBooks() async {
    //required String categor
    emit(SearchResultLoding());
    var result = await searchRepo.fetchSearchResultBooks();
    result.fold((failure) {
      emit(SearchResultFualier(failure.errMassage));
    }, (books) {
      emit(SearchResultSuccess(books));
    });
  }
}
