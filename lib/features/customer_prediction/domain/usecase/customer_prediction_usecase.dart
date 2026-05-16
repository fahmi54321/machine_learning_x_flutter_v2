import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/customer_prediction_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/customer_prediction_params_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/plot_data_entity.dart';

abstract class CustomerPredictionUsecase {
  Future<Either<Failure, CustomerPredictionEntity>> predictCustomer({
    required CustomerPredictionParamsEntity params,
    required CancelToken cancelToken,
  });

  Future<Either<Failure, PlotDataEntity>> plotData({
    required CancelToken cancelToken,
  });
}
