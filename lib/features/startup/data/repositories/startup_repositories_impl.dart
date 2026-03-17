// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:machine_learning_x_flutter/features/startup/data/datasources/startup_datasource.dart';
import 'package:machine_learning_x_flutter/core/error/exceptions.dart';
import 'package:machine_learning_x_flutter/features/startup/data/mapper/startup_model_mapper.dart';
import 'package:machine_learning_x_flutter/features/startup/domain/entities/startup_entity.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/startup/domain/repositories/startup_repository.dart';
import 'package:machine_learning_x_flutter/features/startup/domain/entities/params/startup_params_entity.dart';

class StartupRepositoriesImpl implements StartupRepository {
  final StartupDatasource startupDatasource;
  const StartupRepositoriesImpl({required this.startupDatasource});
  @override
  Future<Either<Failure, StartupEntity>> predict({
    required PredictStartupParamsEntity params,
    required CancelToken? cancelToken,
  }) async {
    try {
      final result = await startupDatasource.predict(
        params: params,
        cancelToken: cancelToken,
      );
      return right(result.toEntity());
    } on UnauthorizedException catch (e) {
      return Left(UnauthorizedFailure(e.message));
    } on NotFoundException catch (e) {
      return Left(NotFoundFailure(e.message));
    } on UnknownException catch (e) {
      return Left(UnknownFailure(e.message));
    } on NetworkException {
      return Left(NetworkFailure());
    } on TimeoutException {
      return Left(TimeoutFailure());
    } catch (e) {
      return Left(ServerFailure('Terjadi kesalahan'));
    }
  }
}
