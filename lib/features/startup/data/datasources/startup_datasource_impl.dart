import 'package:dio/dio.dart';

import 'package:machine_learning_x_flutter/features/startup/data/datasources/startup_datasource.dart';
import 'package:machine_learning_x_flutter/core/error/exceptions.dart';
import 'package:machine_learning_x_flutter/features/startup/data/models/startup_model.dart';
import 'package:machine_learning_x_flutter/core/network/dio_client.dart';
import 'package:machine_learning_x_flutter/features/startup/domain/entities/params/startup_params_entity.dart';

class StartupDataspurceImpl implements StartupDatasource {
  final DioClient client;
  const StartupDataspurceImpl({required this.client});
  @override
  Future<StartupModel> predict({
    required PredictStartupParamsEntity params,
    required CancelToken? cancelToken,
  }) async {
    try {
      final response = await client.dio.post(
        'http://10.0.2.2:5000/predict',
        data: {
          "rd_spend": params.rdSpend,
          "administration": params.administration,
          "marketing_spend": params.marketingSpend,
          "state": params.state,
        },
        cancelToken: cancelToken,
        options: Options(headers: {'Content-Type': 'application/json'}),
      );

      return StartupModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.error is Exception) {
        throw e.error!;
      }
      throw ServerException('Terjadi kesalahan');
    }
  }
}
