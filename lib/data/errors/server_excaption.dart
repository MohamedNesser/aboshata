// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

import 'package:graduationproject/data/errors/error/error/error_login.dart';
import 'package:graduationproject/data/errors/error/error_singup/error_signup.dart';
import 'package:graduationproject/data/errors/error/find_person_error/find_person_error.dart';

class ServerException implements Exception {
  ErrorModel errorModel;
  ErrorSignup errorsignp;
  FindPersonerror findpersonerror;
  ServerException({
    required this.errorModel,
    required this.errorsignp,
    required this.findpersonerror,
  });
}

void handleDioExceptions(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ServerException(
          errorsignp: ErrorSignup.fromJson(e.response!.data),
          errorModel: ErrorModel.fromJson(e.response!.data),
          findpersonerror: FindPersonerror.fromJson(e.response!.data));

    case DioExceptionType.sendTimeout:
      throw ServerException(
          errorsignp: ErrorSignup.fromJson(e.response!.data),
          errorModel: ErrorModel.fromJson(e.response!.data),
          findpersonerror: FindPersonerror.fromJson(e.response!.data));

    case DioExceptionType.receiveTimeout:
      throw ServerException(
          errorsignp: ErrorSignup.fromJson(e.response!.data),
          errorModel: ErrorModel.fromJson(e.response!.data),
          findpersonerror: FindPersonerror.fromJson(e.response!.data));

    case DioExceptionType.badCertificate:
      throw ServerException(
          errorsignp: ErrorSignup.fromJson(e.response!.data),
          errorModel: ErrorModel.fromJson(e.response!.data),
          findpersonerror: FindPersonerror.fromJson(e.response!.data));

    case DioExceptionType.cancel:
      throw ServerException(
          errorsignp: ErrorSignup.fromJson(e.response!.data),
          errorModel: ErrorModel.fromJson(e.response!.data),
          findpersonerror: FindPersonerror.fromJson(e.response!.data));

    case DioExceptionType.connectionError:
      throw ServerException(
          errorsignp: ErrorSignup.fromJson(e.response!.data),
          errorModel: ErrorModel.fromJson(e.response!.data),
          findpersonerror: FindPersonerror.fromJson(e.response!.data));

    case DioExceptionType.unknown:
      throw ServerException(
          errorsignp: ErrorSignup.fromJson(e.response!.data),
          errorModel: ErrorModel.fromJson(e.response!.data),
          findpersonerror: FindPersonerror.fromJson(e.response!.data));

    case DioExceptionType.badResponse:
      switch (e.response!.statusCode) {
        case 400: // Bad request
          throw ServerException(
              errorsignp: ErrorSignup.fromJson(e.response!.data),
              errorModel: ErrorModel.fromJson(e.response!.data),
              findpersonerror: FindPersonerror.fromJson(e.response!.data));

        case 401: //unauthorized
          throw ServerException(
              errorsignp: ErrorSignup.fromJson(e.response!.data),
              errorModel: ErrorModel.fromJson(e.response!.data),
              findpersonerror: FindPersonerror.fromJson(e.response!.data));

        case 403: //forbidden
          throw ServerException(
              errorsignp: ErrorSignup.fromJson(e.response!.data),
              errorModel: ErrorModel.fromJson(e.response!.data),
              findpersonerror: FindPersonerror.fromJson(e.response!.data));

        case 404: //not found
          throw ServerException(
              errorsignp: ErrorSignup.fromJson(e.response!.data),
              errorModel: ErrorModel.fromJson(e.response!.data),
              findpersonerror: FindPersonerror.fromJson(e.response!.data));

        case 409: //cofficient
          throw ServerException(
              errorsignp: ErrorSignup.fromJson(e.response!.data),
              errorModel: ErrorModel.fromJson(e.response!.data),
              findpersonerror: FindPersonerror.fromJson(e.response!.data));

        case 422: //  Unprocessable Entity
          throw ServerException(
              errorsignp: ErrorSignup.fromJson(e.response!.data),
              errorModel: ErrorModel.fromJson(e.response!.data),
              findpersonerror: FindPersonerror.fromJson(e.response!.data));

        case 504: // Server exception
          throw ServerException(
              errorsignp: ErrorSignup.fromJson(e.response!.data),
              errorModel: ErrorModel.fromJson(e.response!.data),
              findpersonerror: FindPersonerror.fromJson(e.response!.data));
      }
  }
}
