import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/features/fashion/data/models/fashion_model.dart';

abstract class FashionDatasource {
  Future<FashionModel> predict({required CancelToken? cancelToken});
}
