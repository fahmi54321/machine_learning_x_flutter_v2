import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:machine_learning_x_flutter/features/startup/domain/entities/startup_entity.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/startup/domain/repositories/startup_repository.dart';
import 'package:machine_learning_x_flutter/features/startup/domain/entities/params/startup_params_entity.dart';
import 'package:machine_learning_x_flutter/features/startup/domain/usecases/startup_usecase.dart';

class StartupUsecaseImpl implements StartupUsecase {
  final StartupRepository startupRepository;
  const StartupUsecaseImpl({required this.startupRepository});
  @override
  Future<Either<Failure, StartupEntity>> predict({
    required PredictStartupParamsEntity params,
    required CancelToken? cancelToken,
  }) {
    return startupRepository.predict(params: params, cancelToken: cancelToken);
  }
}
