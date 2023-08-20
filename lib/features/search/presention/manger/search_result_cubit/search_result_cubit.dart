import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../home/data/models/book_model/book_model.dart';
import '../../../../home/data/repos/home_repo.dart';
import '../../../data/repos/search_repo.dart';

part 'search_result_state.dart';

class SearchResultCubit extends Cubit<SearchResultState> {
  SearchResultCubit(this.searchRepo) : super(SearchResultInitial());
  String? searchItem;
  final SearchRepo? searchRepo;

  Future<void> fetchSearchResultBooks({String? searchItem}) async {
    //required String categor
    emit(SearchResultLoding());
    var result =
        await searchRepo!.fetchSearchResultBooks(searchItem: searchItem);
    result.fold((failure) {
      emit(SearchResultFualier(failure.errMassage));
    }, (books) {
      emit(SearchResultSuccess(books));
    });
  }
}
