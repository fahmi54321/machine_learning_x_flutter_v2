import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/features/food_vision/domain/entities/food_entity.dart';
import 'package:machine_learning_x_flutter/features/food_vision/domain/entities/params/food_params_entity.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';

abstract class FoodRepository {
  Future<Either<Failure, FoodEntity>> predict({
    required FoodParamsEntity params,
    required CancelToken? cancelToken,
  });
}
