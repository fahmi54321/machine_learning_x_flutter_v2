import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/features/startup/domain/entities/startup_entity.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/startup/domain/entities/params/startup_params_entity.dart';

abstract class StartupUsecase {
  Future<Either<Failure, StartupEntity>> predict({
    required PredictStartupParamsEntity params,
    required CancelToken? cancelToken,
  });
}
