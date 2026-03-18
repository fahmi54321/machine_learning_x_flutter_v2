import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/core/error/exceptions.dart';
import 'package:machine_learning_x_flutter/core/network/dio_client.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/data/datasources/hr_salaries_predictor_datasources.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/data/models/hr_params_model.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/data/models/hr_salaries_model.dart';

class HrSalariesPredictorDatasourcesImpl
    implements HrSalariesPredictorDatasources {
  final DioClient client;

  HrSalariesPredictorDatasourcesImpl({required this.client});
  @override
  Future<HrSalariesModel> predictSalaries({
    required HrParamsModel params,
    required CancelToken cancelToken,
  }) async {
    try {
      final response = await client.dio.post(
        'http://10.0.2.2:5000/predict',
        options: Options(headers: {'Accept': 'application/json'}),
        cancelToken: cancelToken,
        data: {"position_level": params.level},
      );

      return HrSalariesModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.error is Exception) {
        throw e.error!;
      }
      throw ServerException('Terjadi kesalahan');
    }
  }
}
