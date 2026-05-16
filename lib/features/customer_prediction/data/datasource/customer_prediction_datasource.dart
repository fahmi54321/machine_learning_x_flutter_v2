import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/models/customer_prediction_model.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/models/params/customer_prediction_params_model.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/models/plot_data_model.dart';

abstract class CustomerPredictionDatasource {
  Future<CustomerPredictionModel> predictCustomer({
    required CustomerPredictionParamsModel params,
    required CancelToken cancelToken,
  });

  Future<PlotDataModel> plotData({required CancelToken cancelToken});
}
