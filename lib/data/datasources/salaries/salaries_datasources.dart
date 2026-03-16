import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/data/models/salaries/salaries_model.dart';

abstract class SalariesDatasources {
  Future<SalariesModel> loadPredictFromApi({
    required String val,
    required CancelToken? cancelToken,
  });
}
