import 'package:dio/dio.dart';

import 'package:machine_learning_x_flutter/features/insurance/data/datasources/insurance_datasource.dart';
import 'package:machine_learning_x_flutter/core/error/exceptions.dart';
import 'package:machine_learning_x_flutter/features/insurance/data/models/insurance_model.dart';
import 'package:machine_learning_x_flutter/core/network/dio_client.dart';
import 'package:machine_learning_x_flutter/features/insurance/domain/entities/params/startup_params_entity.dart';

class InsuranceDatasourceImpl implements InsuranceDatasource {
  final DioClient client;
  const InsuranceDatasourceImpl({required this.client});
  @override
  Future<InsuranceModel> predictInsurance({
    required InsuranceParamsEntity params,
    required CancelToken? cancelToken,
  }) async {
    try {
      final response = await client.dio.post(
        'http://10.0.2.2:5000/predict',
        options: Options(headers: {'Accept': 'application/json'}),
        cancelToken: cancelToken,
        data: {
          "age": params.age,
          "sex": params.sex,
          "bmi": params.bmi,
          "children": params.children,
          "smoker": params.smoker,
          "region": params.region,
        },
      );

      return InsuranceModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.error is Exception) {
        throw e.error!;
      }
      throw ServerException('Terjadi kesalahan');
    }
  }
}
