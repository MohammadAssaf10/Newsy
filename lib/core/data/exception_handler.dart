import 'package:dio/dio.dart';

import '../../config/strings_manager.dart';
import 'dio_exception_handler.dart';
import 'failure.dart';

class ExceptionHandler implements Exception {
  late final Failure failure;

  ExceptionHandler.handle(exception) {
    print("exception cached: ${exception.runtimeType} ${exception.toString()}");

    // if (exception is FirebaseAuthException) {
    //   failure = FirebaseAuthExceptionHandler.handle(exception).getFailure();
    // } else if (exception is FirebaseException) {
    //   failure = FirebaseExceptionHandler.handle(exception).getFailure();
    // } else
      if (exception is DioError) {
      failure = getDioFailure(exception);
    } else {
      print(
          "unhandled exception: ${exception.runtimeType} ${exception.toString()}");

      failure = Failure(0, AppStrings.undefined);
    }
  }
}

enum DataSourceExceptions { noInternetConnections, forbidden }

extension DataSourceExceptionsExtensions on DataSourceExceptions {
  Failure getFailure() {
    switch (this) {
      case DataSourceExceptions.noInternetConnections:
        return Failure(ResponseCode.noInternetConnection,
            ResponseMessage.noInternetConnection);
      case DataSourceExceptions.forbidden:
        return Failure(ResponseCode.forbidden, ResponseMessage.forbidden);
    }
  }
}

class ResponseCode {
  static const int success = 200; // success with data
  static const int noContent = 201; // success with no data (no content)
  static const int badRequestError = 400; // failure, API rejected request
  static const int unauthorized = 401; // failure, user is not authorized
  static const int forbidden = 403; //  failure, API rejected request
  static const int internalServerError = 500; // failure, crash in server side
  static const int notFound = 404; // failure, not found

  // local status code
  static const int connectTimeout = -1;
  static const int cancel = -2;
  static const int receiveTimeout = -3;
  static const int sendTimeout = -4;
  static const int cacheError = -5;
  static const int noInternetConnection = -6;
  static const int defaultError = -7;
}

class ResponseMessage {
  static const String success = AppStrings.success; // success with data
  static const String noContent =
      AppStrings.success; // success with no data (no content)
  static const String badRequestError =
      AppStrings.badRequestError; // failure, API rejected request
  static const String unauthorized =
      AppStrings.unauthorizedError; // failure, user is not authorized
  static const String forbidden =
      AppStrings.forbiddenError; //  failure, API rejected request
  static const String internalServerError =
      AppStrings.internalServerError; // failure, crash in server side
  static const String notFound =
      AppStrings.notFoundError; // failure, crash in server side

  // local status code
  static const String connectTimeout = AppStrings.timeoutError;
  static const String cancel = AppStrings.defaultError;
  static const String receiveTimeout = AppStrings.timeoutError;
  static const String sendTimeout = AppStrings.timeoutError;
  static const String cacheError = AppStrings.cacheError;
  static const String noInternetConnection = AppStrings.noInternetError;
  static const String defaultError = AppStrings.defaultError;
}

class ApiInternalStatus {
  static const int success = 0;
  static const int failure = 1;
}
