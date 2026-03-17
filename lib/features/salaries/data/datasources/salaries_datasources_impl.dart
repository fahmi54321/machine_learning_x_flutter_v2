import 'package:dio/dio.dart';

import 'package:machine_learning_x_flutter/features/salaries/data/datasources/salaries_datasources.dart';
import 'package:machine_learning_x_flutter/core/error/exceptions.dart';
import 'package:machine_learning_x_flutter/features/salaries/data/models/salaries_model.dart';
import 'package:machine_learning_x_flutter/core/network/dio_client.dart';

class SalariesDatasourcesImpl implements SalariesDatasources {
  final DioClient client;
  const SalariesDatasourcesImpl({required this.client});
  @override
  Future<SalariesModel> loadPredictFromApi({
    required String val,
    required CancelToken? cancelToken,
  }) async {
    try {
      final response = await client.dio.post(
        'http://10.0.2.2:5000/predict',
        cancelToken: cancelToken,
        options: Options(headers: {'Content-Type': 'application/json'}),
        data: {'years_experience': val},
      );

      return SalariesModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.error is Exception) {
        throw e.error!;
      }
      throw ServerException('Terjadi kesalahan');
    }
  }
}
