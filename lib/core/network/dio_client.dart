import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/core/app/auth/auth_event_bus.dart';
import 'package:machine_learning_x_flutter/core/network/interceptors/auth_interceptor.dart';
// import 'package:machine_learning_x_flutter/data/network/refresh_token_interceptor.dart'; // soon

import 'interceptors/api_interceptor.dart';
import 'interceptors/retry_interceptor.dart';
import 'adapters/dio_adapter.dart';

class DioClient {
  late final Dio dio;
  final AuthEventBus authEventBus;

  DioClient({required this.authEventBus}) {
    init();
  }

  void init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://10.0.2.2:5000',
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        headers: const {'Content-Type': 'application/json'},
        validateStatus: (status) => status != null,
      ),
    );

    dio.httpClientAdapter = buildHttpAdapter();

    dio.interceptors.addAll([
      ApiInterceptor(authEventBus: authEventBus),
      RetryInterceptor(),
      LogInterceptor(requestBody: true, responseBody: true),
      AuthInterceptor(
        authEventBus: authEventBus,
        // tokenStorage: tokenStorage, // soon
      ),

      // soon
      // RefreshTokenInterceptor(
      //   dio: dio,
      //   authDataSource: authDataSource,
      //   authEventBus: authEventBus,
      // ),
    ]);
  }
}
