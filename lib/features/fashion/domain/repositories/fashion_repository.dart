import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/features/fashion/domain/entities/fashion_entity.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';

abstract class FashionRepository {
  Future<Either<Failure, FashionEntity>> predict({
    required CancelToken? cancelToken,
  });
}
