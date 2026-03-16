import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:dartz/dartz.dart';

abstract class BaseRequestProvider extends ChangeNotifier {
  final Map<String, CancelToken> _tokens = {};
  bool _isDisposed = false;

  bool get isDisposed => _isDisposed;

  CancelToken _createToken(String key) {
    _tokens[key]?.cancel("Replaced by new request");
    final token = CancelToken();
    _tokens[key] = token;
    return token;
  }

  void cancel(String key) {
    _tokens[key]?.cancel("Cancelled by user");
    _tokens.remove(key);
  }

  void cancelAll() {
    for (final token in _tokens.values) {
      token.cancel("Provider disposed");
    }
    _tokens.clear();
  }

  Future<void> safeEitherRequest<L, R>({
    required String key,
    required Future<Either<L, R>> Function(CancelToken token) request,
    required void Function(R data) onSuccess,
    required void Function(L failure) onFailure,
    VoidCallback? onStart,
    VoidCallback? onComplete,
  }) async {
    if (_isDisposed) return;

    onStart?.call();

    final token = _createToken(key);

    try {
      final result = await request(token);

      if (_isDisposed) return;

      result.fold((failure) => onFailure(failure), (data) => onSuccess(data));
    } catch (_) {
      if (_isDisposed) return;
    } finally {
      if (!_isDisposed) {
        onComplete?.call();
      }
    }
  }

  Future<void> safeEitherCall<L, R>({
    required Future<Either<L, R>> Function() call,
    required void Function(R data) onSuccess,
    required void Function(L failure) onFailure,
  }) async {
    if (_isDisposed) return;

    final result = await call();

    if (_isDisposed) return;

    result.fold(onFailure, onSuccess);
  }

  @override
  void notifyListeners() {
    if (!_isDisposed) {
      super.notifyListeners();
    }
  }

  @override
  void dispose() {
    _isDisposed = true;
    cancelAll();
    super.dispose();
  }
}
