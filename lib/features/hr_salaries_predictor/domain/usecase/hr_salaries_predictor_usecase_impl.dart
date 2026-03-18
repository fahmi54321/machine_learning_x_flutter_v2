import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_params_entity.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_salaries_entity.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/repositories/hr_salaries_predictor_repositories.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/usecase/hr_salaries_predictor_usecase.dart';

class HrSalariesPredictorUsecaseImpl implements HrSalariesPredictorUsecase {
  final HrSalariesPredictorRepositories hrSalariesPredictorRepositories;
  HrSalariesPredictorUsecaseImpl({
    required this.hrSalariesPredictorRepositories,
  });
  @override
  Future<Either<Failure, HrSalariesEntity>> predictSalaries({
    required HrParamsEntity params,
    required CancelToken cancelToken,
  }) {
    return hrSalariesPredictorRepositories.predictSalaries(
      params: params,
      cancelToken: cancelToken,
    );
  }
}
