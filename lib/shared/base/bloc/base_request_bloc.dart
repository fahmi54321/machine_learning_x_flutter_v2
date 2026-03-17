import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/foundation.dart';

abstract class BaseRequestBloc<S> extends Cubit<S> {
  BaseRequestBloc(super.initialState);

  final Map<String, CancelToken> _tokens = {};
  bool _isClosed = false;

  bool get isClosedSafe => _isClosed;

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
      token.cancel("Bloc closed");
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
    if (_isClosed) return;

    onStart?.call();

    final token = _createToken(key);

    try {
      final result = await request(token);

      if (_isClosed) return;

      result.fold((failure) => onFailure(failure), (data) => onSuccess(data));
    } catch (_) {
      if (_isClosed) return;
    } finally {
      if (!_isClosed) {
        onComplete?.call();
      }
    }
  }

  Future<void> safeEitherCall<L, R>({
    required Future<Either<L, R>> Function() call,
    required void Function(R data) onSuccess,
    required void Function(L failure) onFailure,
  }) async {
    if (_isClosed) return;

    final result = await call();

    if (_isClosed) return;

    result.fold(onFailure, onSuccess);
  }

  @override
  Future<void> close() {
    _isClosed = true;
    cancelAll();
    return super.close();
  }
}
