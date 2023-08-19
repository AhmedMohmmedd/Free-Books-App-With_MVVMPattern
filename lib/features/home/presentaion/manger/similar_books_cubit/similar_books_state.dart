part of 'similar_books_cubit.dart';

class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoding extends SimilarBooksState {}

class SimilarBooksFualier extends SimilarBooksState {
  final String errMessage;

  const SimilarBooksFualier(this.errMessage);
}

class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;

const  SimilarBooksSuccess(this.books);
}
