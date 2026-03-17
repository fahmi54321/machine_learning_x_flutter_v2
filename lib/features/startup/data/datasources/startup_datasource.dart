import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/features/startup/data/models/startup_model.dart';
import 'package:machine_learning_x_flutter/features/startup/domain/entities/params/startup_params_entity.dart';

abstract class StartupDatasource {
  Future<StartupModel> predict({
    required PredictStartupParamsEntity params,
    required CancelToken? cancelToken,
  });
}
