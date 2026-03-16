import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:machine_learning_x_flutter/domain/entities/startup/startup_entity.dart';
import 'package:machine_learning_x_flutter/domain/failures/failures.dart';
import 'package:machine_learning_x_flutter/domain/repositories/startup/startup_repository.dart';
import 'package:machine_learning_x_flutter/domain/entities/params/startup/startup_params_entity.dart';
import 'package:machine_learning_x_flutter/presentation/usecases/startup/startup_usecase.dart';

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
