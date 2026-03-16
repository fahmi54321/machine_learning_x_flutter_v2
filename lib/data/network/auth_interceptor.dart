// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

import 'package:machine_learning_x_flutter/core/auth/auth_event_bus.dart';

class AuthInterceptor extends Interceptor {
  final AuthEventBus authEventBus;
  // final TokenStorage tokenStorage; // soon

  AuthInterceptor({
    required this.authEventBus,
    // required this.tokenStorage // soon
  });

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final statusCode = err.response?.statusCode;

    if (statusCode == 401) {
      authEventBus.add(LogoutEvent());
    }

    super.onError(err, handler);
  }

  // soon

  // @override
  // void onRequest(
  //   RequestOptions options,
  //   RequestInterceptorHandler handler,
  // ) async {
  //   final token = await tokenStorage.getAccessToken();

  //   if (token != null) {
  //     options.headers['Authorization'] = 'Bearer $token';
  //   }

  //   handler.next(options);
  // }
}
