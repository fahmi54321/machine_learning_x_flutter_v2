import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_params_entity.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_salaries_entity.dart';

abstract class HrSalariesPredictorUsecase {
  Future<Either<Failure, HrSalariesEntity>> predictSalaries({
    required HrParamsEntity params,
    required CancelToken cancelToken,
  });
}
