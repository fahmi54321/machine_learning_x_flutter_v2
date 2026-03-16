import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/data/exceptions/exceptions.dart';

class RetryInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (_isTimeout(err)) {
      log('err.type: ${err.type}');

      handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: const TimeoutException(),
          type: err.type,
        ),
      );
    } else {
      handler.next(err);
    }
  }

  bool _isTimeout(DioException err) {
    return err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.receiveTimeout ||
        err.type == DioExceptionType.connectionError;
  }
}
