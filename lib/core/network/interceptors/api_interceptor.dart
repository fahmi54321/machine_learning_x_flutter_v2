import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/core/app/auth/auth_event_bus.dart';
import 'package:machine_learning_x_flutter/core/error/exceptions.dart';

class ApiInterceptor extends Interceptor {
  final AuthEventBus authEventBus;
  ApiInterceptor({required this.authEventBus});
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final statusCode = response.statusCode ?? 0;
    final data = response.data;
    final message =
        data?['status']?['message'] ?? data?['message'] ?? 'Tidak ada koneksi';
    log('onResponse message: $message');
    log('onResponse statusCode: $statusCode');

    if (statusCode >= 200 && statusCode < 300) {
      handler.next(response);
    } else {
      switch (statusCode) {
        case 401:
          authEventBus.add(LogoutEvent());
          handler.reject(
            DioException(
              requestOptions: response.requestOptions,
              error: UnauthorizedException(message),
            ),
          );
          return;

        case 404:
          handler.reject(
            DioException(
              requestOptions: response.requestOptions,
              error: NotFoundException(message),
            ),
          );
          return;

        case 422:
          handler.reject(
            DioException(
              requestOptions: response.requestOptions,
              error: ValidationException(message),
            ),
          );
          return;

        case 500:
          handler.reject(
            DioException(
              requestOptions: response.requestOptions,
              error: ServerException('Kesalahan server'),
            ),
          );
          return;

        default:
          handler.reject(
            DioException(
              requestOptions: response.requestOptions,
              error: UnknownException(message),
            ),
          );
          return;
      }
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final status = err.response?.statusCode;
    final data = err.response?.data;
    final message =
        data?['status']?['message'] ?? data?['message'] ?? 'Tidak ada koneksi';

    log('onError message: $message');
    log('onError statusCode: $status');

    switch (status) {
      case 401:
        authEventBus.add(LogoutEvent());
        handler.reject(
          DioException(
            requestOptions: err.requestOptions,
            error: UnauthorizedException(message),
          ),
        );
        return;

      case 404:
        handler.reject(
          DioException(
            requestOptions: err.requestOptions,
            error: NotFoundException(message),
          ),
        );
        return;

      case 422:
        handler.reject(
          DioException(
            requestOptions: err.requestOptions,
            error: ValidationException(message),
          ),
        );
        return;

      case 500:
        handler.reject(
          DioException(
            requestOptions: err.requestOptions,
            error: ServerException('Kesalahan server'),
          ),
        );
        return;

      default:
        handler.reject(
          DioException(
            requestOptions: err.requestOptions,
            error: UnknownException(message),
          ),
        );
        return;
    }
  }
}
