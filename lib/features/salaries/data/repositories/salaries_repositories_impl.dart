// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:machine_learning_x_flutter/features/salaries/data/datasources/salaries_datasources.dart';
import 'package:machine_learning_x_flutter/core/error/exceptions.dart';
import 'package:machine_learning_x_flutter/features/salaries/data/mapper/salaries_model_mapper.dart';
import 'package:machine_learning_x_flutter/features/salaries/domain/entities/salaries_entity.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/salaries/domain/repositories/salaries_repositories.dart';

class SalariesRepositoriesImpl implements SalariesRepositories {
  final SalariesDatasources salariesDatasources;
  const SalariesRepositoriesImpl({required this.salariesDatasources});
  @override
  Future<Either<Failure, SalariesEntity>> loadPredict({
    required String val,
    required CancelToken? cancelToken,
  }) async {
    try {
      final result = await salariesDatasources.loadPredictFromApi(
        val: val,
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
