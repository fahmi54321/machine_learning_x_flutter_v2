import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:machine_learning_x_flutter/features/insurance/data/datasources/insurance_datasource.dart';
import 'package:machine_learning_x_flutter/core/error/exceptions.dart';
import 'package:machine_learning_x_flutter/features/insurance/data/mapper/insurance_model_mapper.dart';
import 'package:machine_learning_x_flutter/features/insurance/domain/entities/insurance_entity.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/insurance/domain/repositories/insurance_repository.dart';
import 'package:machine_learning_x_flutter/features/insurance/domain/entities/params/startup_params_entity.dart';

class InsuranceRepositoryImpl implements InsuranceRepository {
  final InsuranceDatasource insuranceDatasource;
  const InsuranceRepositoryImpl({required this.insuranceDatasource});
  @override
  Future<Either<Failure, InsuranceEntity>> predictInsurance({
    required InsuranceParamsEntity params,
    required CancelToken? cancelToken,
  }) async {
    try {
      final result = await insuranceDatasource.predictInsurance(
        params: params,
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
