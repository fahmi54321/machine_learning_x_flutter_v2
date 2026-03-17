import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:machine_learning_x_flutter/features/food_vision/domain/entities/food_entity.dart';
import 'package:machine_learning_x_flutter/features/food_vision/domain/entities/params/food_params_entity.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/food_vision/domain/repositories/food_repository.dart';
import 'package:machine_learning_x_flutter/features/food_vision/domain/usecases/food_usecase.dart';

class FoodUsecaseImpl implements FoodUsecase {
  final FoodRepository foodRepository;
  const FoodUsecaseImpl({required this.foodRepository});
  @override
  Future<Either<Failure, FoodEntity>> predict({
    required FoodParamsEntity params,
    required CancelToken? cancelToken,
  }) {
    return foodRepository.predict(params: params, cancelToken: cancelToken);
  }
}
