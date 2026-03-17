import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/features/salaries/data/models/salaries_model.dart';

abstract class SalariesDatasources {
  Future<SalariesModel> loadPredictFromApi({
    required String val,
    required CancelToken? cancelToken,
  });
}
