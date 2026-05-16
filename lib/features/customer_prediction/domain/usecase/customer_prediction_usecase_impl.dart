// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/customer_prediction_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/customer_prediction_params_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/plot_data_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/repositories/customer_prediction_repository.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/usecase/customer_prediction_usecase.dart';

class CustomerPredictionUsecaseImpl implements CustomerPredictionUsecase {
  final CustomerPredictionRepository customerPredictionRepository;
  CustomerPredictionUsecaseImpl({required this.customerPredictionRepository});
  @override
  Future<Either<Failure, PlotDataEntity>> plotData({
    required CancelToken cancelToken,
  }) {
    return customerPredictionRepository.plotDataCustomer(
      cancelToken: cancelToken,
    );
  }

  @override
  Future<Either<Failure, CustomerPredictionEntity>> predictCustomer({
    required CustomerPredictionParamsEntity params,
    required CancelToken cancelToken,
  }) {
    return customerPredictionRepository.predictCustomer(
      params: params,
      cancelToken: cancelToken,
    );
  }
}
