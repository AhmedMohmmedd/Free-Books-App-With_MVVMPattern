import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
             'volumes?Filtering=free-ebooks&subject=test&q=Flutter');
             //volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Programming'
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
  books.add(BookModel.fromJson(item));
}  catch (e) {
  books.add(BookModel.fromJson(item));

}
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
      // return left(ServerFailure());
    }

  }


  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
      // return left(ServerFailure());
    }
  }
  
  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category})async {
     try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=relevanc&q=subject:$category');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
      // return left(ServerFailure());
    }
  }
}
