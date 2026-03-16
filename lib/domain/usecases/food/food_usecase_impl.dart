import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:machine_learning_x_flutter/domain/entities/food/food_entity.dart';
import 'package:machine_learning_x_flutter/domain/entities/params/food/food_params_entity.dart';
import 'package:machine_learning_x_flutter/domain/failures/failures.dart';
import 'package:machine_learning_x_flutter/domain/repositories/food/food_repository.dart';
import 'package:machine_learning_x_flutter/presentation/usecases/food/food_usecase.dart';

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
