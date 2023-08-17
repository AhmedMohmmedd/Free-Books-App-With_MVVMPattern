part of 'featuerd_books_cubit.dart';

class FeatuerdBooksState extends Equatable {
  const FeatuerdBooksState();

  @override
  List<Object> get props => [];
}

class FeatuerdBooksInitial extends FeatuerdBooksState {}

class FeatuerdBooksLoding extends FeatuerdBooksState {}

class FeatuerdBooksFailure extends FeatuerdBooksState {
  final String errMessage;

  const FeatuerdBooksFailure(this.errMessage);
}

class FeatuerdBooksSuccess extends FeatuerdBooksState {
  final List<BookModel> books;

  const FeatuerdBooksSuccess(this.books);
}
