import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/features/insurance/domain/entities/insurance_entity.dart';
import 'package:machine_learning_x_flutter/features/insurance/domain/entities/params/startup_params_entity.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';

abstract class InsuranceUsecase {
  Future<Either<Failure, InsuranceEntity>> predictInsurance({
    required InsuranceParamsEntity params,
    required CancelToken? cancelToken,
  });
}
