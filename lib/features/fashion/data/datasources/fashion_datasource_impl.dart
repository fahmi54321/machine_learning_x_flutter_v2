import 'package:dio/dio.dart';

import 'package:machine_learning_x_flutter/features/fashion/data/datasources/fashion_datasource.dart';
import 'package:machine_learning_x_flutter/core/error/exceptions.dart';
import 'package:machine_learning_x_flutter/features/fashion/data/models/fashion_model.dart';
import 'package:machine_learning_x_flutter/core/network/dio_client.dart';

class FashionDatasourceImpl implements FashionDatasource {
  final DioClient client;
  const FashionDatasourceImpl({required this.client});
  @override
  Future<FashionModel> predict({required CancelToken? cancelToken}) async {
    try {
      final response = await client.dio.get(
        'http://10.0.2.2:5000/predict',
        cancelToken: cancelToken,
        options: Options(headers: {'Content-Type': 'application/json'}),
      );

      return FashionModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.error is Exception) {
        throw e.error!;
      }
      throw ServerException('Terjadi kesalahan');
    }
  }
}
