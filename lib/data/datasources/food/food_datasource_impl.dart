import 'package:dio/dio.dart';

import 'package:machine_learning_x_flutter/data/datasources/food/food_datasource.dart';
import 'package:machine_learning_x_flutter/data/exceptions/exceptions.dart';
import 'package:machine_learning_x_flutter/data/models/food/food_model.dart';
import 'package:machine_learning_x_flutter/data/network/dio_client.dart';

class FoodDatasourceImpl implements FoodDatasource {
  final DioClient client;
  const FoodDatasourceImpl({required this.client});
  @override
  Future<FoodModel> predict({
    required String imagePath,
    required String trueLabel,
    required CancelToken? cancelToken,
  }) async {
    try {
      FormData formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(imagePath, filename: 'image.jpg'),
        'true_label': trueLabel,
      });
      final response = await client.dio.post(
        'http://10.0.2.2:5000/predict',
        data: formData,
        cancelToken: cancelToken,
        options: Options(headers: {'Accept': 'application/json'}),
      );

      return FoodModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.error is TimeoutException) {
        throw TimeoutException();
      }
      throw ServerException('Terjadi kesalahan');
    }
  }
}
