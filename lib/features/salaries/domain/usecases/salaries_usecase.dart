import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/features/salaries/domain/entities/salaries_entity.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';

abstract class SalariesUseCase {
  Future<Either<Failure, SalariesEntity>> loadPredict({
    required String val,
    required CancelToken? cancelToken,
  });
}
