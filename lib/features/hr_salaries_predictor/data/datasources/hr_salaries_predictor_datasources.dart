import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/data/models/hr_params_model.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/data/models/hr_salaries_model.dart';

abstract class HrSalariesPredictorDatasources {
  Future<HrSalariesModel> predictSalaries({
    required HrParamsModel params,
    required CancelToken cancelToken,
  });
}
