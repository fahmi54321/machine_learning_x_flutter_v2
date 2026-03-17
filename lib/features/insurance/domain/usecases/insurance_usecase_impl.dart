import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:machine_learning_x_flutter/features/insurance/domain/entities/insurance_entity.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/insurance/domain/repositories/insurance_repository.dart';
import 'package:machine_learning_x_flutter/features/insurance/domain/entities/params/startup_params_entity.dart';
import 'package:machine_learning_x_flutter/features/insurance/domain/usecases/insurance_usecase.dart';

class InsuranceUsecaseImpl implements InsuranceUsecase {
  final InsuranceRepository insuranceRepository;
  const InsuranceUsecaseImpl({required this.insuranceRepository});
  @override
  Future<Either<Failure, InsuranceEntity>> predictInsurance({
    required InsuranceParamsEntity params,
    required CancelToken? cancelToken,
  }) {
    return insuranceRepository.predictInsurance(
      params: params,
      cancelToken: cancelToken,
    );
  }
}
