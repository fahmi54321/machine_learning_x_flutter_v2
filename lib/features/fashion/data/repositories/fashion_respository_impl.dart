import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:machine_learning_x_flutter/features/fashion/data/datasources/fashion_datasource.dart';
import 'package:machine_learning_x_flutter/core/error/exceptions.dart';
import 'package:machine_learning_x_flutter/features/fashion/data/mapper/fashion_model_mapper.dart';
import 'package:machine_learning_x_flutter/features/fashion/domain/entities/fashion_entity.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/fashion/domain/repositories/fashion_repository.dart';

class FashionRespositoryImpl implements FashionRepository {
  final FashionDatasource fashionDatasource;
  const FashionRespositoryImpl({required this.fashionDatasource});
  @override
  Future<Either<Failure, FashionEntity>> predict({
    required CancelToken? cancelToken,
  }) async {
    try {
      final result = await fashionDatasource.predict(cancelToken: cancelToken);
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
