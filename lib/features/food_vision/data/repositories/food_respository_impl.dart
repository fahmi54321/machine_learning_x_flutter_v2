import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:machine_learning_x_flutter/features/food_vision/data/datasources/food_datasource.dart';
import 'package:machine_learning_x_flutter/core/error/exceptions.dart';
import 'package:machine_learning_x_flutter/features/food_vision/data/mapper/food_model_mapper.dart';
import 'package:machine_learning_x_flutter/features/food_vision/domain/entities/food_entity.dart';
import 'package:machine_learning_x_flutter/features/food_vision/domain/entities/params/food_params_entity.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/food_vision/domain/repositories/food_repository.dart';

class FoodRespositoryImpl implements FoodRepository {
  final FoodDatasource foodDatasource;
  const FoodRespositoryImpl({required this.foodDatasource});
  @override
  Future<Either<Failure, FoodEntity>> predict({
    required FoodParamsEntity params,
    required CancelToken? cancelToken,
  }) async {
    try {
      final result = await foodDatasource.predict(
        imagePath: params.imagePath,
        trueLabel: params.trueLabel,
        cancelToken: cancelToken,
      );
      return right(result.toEntity());
    } on UnauthorizedException catch (e) {
      return Left(UnauthorizedFailure(e.message));
    } on NotFoundException catch (e) {
      return Left(NotFoundFailure(e.message));
    } on UnknownException catch (e) {
      return Left(UnknownFailure(e.message));
    } on NetworkException {
      return Left(NetworkFailure());
    } on TimeoutException {
      return Left(TimeoutFailure());
    } catch (e) {
      return Left(ServerFailure('Terjadi kesalahan'));
    }
  }
}
