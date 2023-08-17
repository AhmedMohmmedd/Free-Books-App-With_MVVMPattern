part of 'newset_books_cubit.dart';

class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

class NewsetBooksInitial extends NewsetBooksState {}

class NewsetBooksLoding extends NewsetBooksState {}

class NewsetBooksSuccess extends NewsetBooksState {
  final List<BookModel> Books;

const NewsetBooksSuccess(this.Books);
}

class NewsetBooksFailuer extends NewsetBooksState {
  final String errMaseg;

  const NewsetBooksFailuer(this.errMaseg);
}
