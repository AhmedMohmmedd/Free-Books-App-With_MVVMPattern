part of 'search_result_cubit.dart';

 class SearchResultState extends Equatable {
  const SearchResultState();

  @override
  List<Object> get props => [];
}

 class SearchResultInitial extends SearchResultState {}
class SearchResultLoding extends SearchResultState {}

class SearchResultFualier extends SearchResultState {
  final String errMessage;

  const SearchResultFualier(this.errMessage);
}

class SearchResultSuccess extends SearchResultState {
  final List<BookModel> books;

const  SearchResultSuccess(this.books);
}