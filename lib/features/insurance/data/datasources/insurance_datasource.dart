import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/features/insurance/data/models/insurance_model.dart';
import 'package:machine_learning_x_flutter/features/insurance/domain/entities/params/startup_params_entity.dart';

abstract class InsuranceDatasource {
  Future<InsuranceModel> predictInsurance({
    required InsuranceParamsEntity params,
    required CancelToken? cancelToken,
  });
}
