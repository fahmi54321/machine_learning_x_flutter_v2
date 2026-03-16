// import 'package:dio/dio.dart';
// import 'package:machine_learning_x_flutter/core/auth/auth_event_bus.dart';

// class RefreshTokenInterceptor extends Interceptor {
//   final Dio dio;
//   final AuthDataSource authDataSource;
//   final AuthEventBus authEventBus;

//   bool _isRefreshing = false;

//   final List<_PendingRequest> _queue = [];

//   RefreshTokenInterceptor({
//     required this.dio,
//     required this.authDataSource,
//     required this.authEventBus,
//   });

//   @override
//   void onError(DioException err, ErrorInterceptorHandler handler) async {
//     final statusCode = err.response?.statusCode;

//     if (statusCode != 401) {
//       handler.next(err);
//       return;
//     }

//     final requestOptions = err.requestOptions;

//     // jangan refresh kalau endpoint refresh sendiri
//     if (requestOptions.path.contains('/auth/refresh')) {
//       authEventBus.add(LogoutEvent());
//       handler.next(err);
//       return;
//     }

//     _queue.add(_PendingRequest(requestOptions, handler));

//     if (_isRefreshing) {
//       return;
//     }

//     _isRefreshing = true;

//     final newToken = await authDataSource.refreshToken();

//     if (newToken == null) {
//       _failQueue(err);
//       authEventBus.add(LogoutEvent());
//       return;
//     }

//     await _retryQueue(newToken);

//     _isRefreshing = false;
//   }

//   Future<void> _retryQueue(String token) async {
//     for (final pending in _queue) {
//       try {
//         pending.requestOptions.headers['Authorization'] = 'Bearer $token';

//         final response = await dio.fetch(pending.requestOptions);

//         pending.handler.resolve(response);
//       } catch (e) {
//         pending.handler.reject(e as DioException);
//       }
//     }

//     _queue.clear();
//   }

//   void _failQueue(DioException err) {
//     for (final pending in _queue) {
//       pending.handler.reject(err);
//     }

//     _queue.clear();
//     _isRefreshing = false;
//   }
// }

// class _PendingRequest {
//   final RequestOptions requestOptions;
//   final ErrorInterceptorHandler handler;

//   _PendingRequest(this.requestOptions, this.handler);
// }
