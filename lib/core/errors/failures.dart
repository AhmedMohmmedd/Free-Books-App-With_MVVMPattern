import 'dart:io';

import 'package:dio/dio.dart';

abstract class Failure {
  final String errMassage;

  const Failure(this.errMassage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMassage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection time out');

      case DioExceptionType.sendTimeout:
        return ServerFailure('send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure('Connection badCertificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('send timeout with ApiServer was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure(' no internet connection');
        }
        return ServerFailure('Unexpected error ,try again');
      default:
        return ServerFailure('Opps there was an error, please try later');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your reqest not found , try later');
    } else if (statusCode == 500) {
      return ServerFailure('internat server error , try later');
    } else {
      return ServerFailure('Opps there was an error, please try later');
    }
  }
}
