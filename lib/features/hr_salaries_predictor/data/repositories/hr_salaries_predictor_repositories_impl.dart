import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/core/error/exceptions.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/data/datasources/hr_salaries_predictor_datasources.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/data/mapper/hr_params_mapper.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/data/mapper/hr_salaries_mapper.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_params_entity.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_salaries_entity.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/repositories/hr_salaries_predictor_repositories.dart';

class HrSalariesPredictorRepositoriesImpl
    implements HrSalariesPredictorRepositories {
  final HrSalariesPredictorDatasources hrSalariesPredictorDatasources;

  const HrSalariesPredictorRepositoriesImpl({
    required this.hrSalariesPredictorDatasources,
  });
  @override
  Future<Either<Failure, HrSalariesEntity>> predictSalaries({
    required HrParamsEntity params,
    required CancelToken cancelToken,
  }) async {
    try {
      final result = await hrSalariesPredictorDatasources.predictSalaries(
        cancelToken: cancelToken,
        params: params.toModel(),
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
