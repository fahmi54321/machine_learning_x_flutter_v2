import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/core/error/exceptions.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/datasource/customer_prediction_datasource.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/mapper/customer_prediction_mapper.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/mapper/customer_prediction_params_mapper.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/mapper/plot_data_mapper.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/customer_prediction_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/customer_prediction_params_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/plot_data_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/repositories/customer_prediction_repository.dart';

class CustomerPredictionRepositoryImpl implements CustomerPredictionRepository {
  final CustomerPredictionDatasource customerPredictionDatasource;

  const CustomerPredictionRepositoryImpl({
    required this.customerPredictionDatasource,
  });
  @override
  Future<Either<Failure, PlotDataEntity>> plotDataCustomer({
    required CancelToken cancelToken,
  }) async {
    try {
      final result = await customerPredictionDatasource.plotData(
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

  @override
  Future<Either<Failure, CustomerPredictionEntity>> predictCustomer({
    required CustomerPredictionParamsEntity params,
    required CancelToken cancelToken,
  }) async {
    try {
      final result = await customerPredictionDatasource.predictCustomer(
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
