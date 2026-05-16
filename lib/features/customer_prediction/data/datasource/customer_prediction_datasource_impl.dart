import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/core/error/exceptions.dart';
import 'package:machine_learning_x_flutter/core/network/dio_client.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/datasource/customer_prediction_datasource.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/models/customer_prediction_model.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/models/params/customer_prediction_params_model.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/models/plot_data_model.dart';

class CustomerPredictionDatasourceImpl implements CustomerPredictionDatasource {
  final DioClient client;

  const CustomerPredictionDatasourceImpl({required this.client});
  @override
  Future<PlotDataModel> plotData({required CancelToken cancelToken}) async {
    try {
      final response = await client.dio.get(
        'http://10.0.2.2:5000/plot-data',
        options: Options(headers: {'Accept': 'application/json'}),
        cancelToken: cancelToken,
      );

      return PlotDataModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.error is Exception) {
        throw e.error!;
      }
      throw ServerException('Terjadi kesalahan');
    }
  }

  @override
  Future<CustomerPredictionModel> predictCustomer({
    required CustomerPredictionParamsModel params,
    required CancelToken cancelToken,
  }) async {
    try {
      final response = await client.dio.post(
        'http://10.0.2.2:5000/predict',
        options: Options(headers: {'Accept': 'application/json'}),
        cancelToken: cancelToken,
        data: {"age": params.age, "estimated_salary": params.estimatedSalary},
      );

      return CustomerPredictionModel.fromJson(
        response.data as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      if (e.error is Exception) {
        throw e.error!;
      }
      throw ServerException('Terjadi kesalahan');
    }
  }
}
