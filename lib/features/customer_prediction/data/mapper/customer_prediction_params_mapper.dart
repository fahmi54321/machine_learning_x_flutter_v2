import 'package:machine_learning_x_flutter/features/customer_prediction/data/models/params/customer_prediction_params_model.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/customer_prediction_params_entity.dart';

extension CustomerPredictionParamsMapper on CustomerPredictionParamsEntity {
  CustomerPredictionParamsModel toModel() {
    return CustomerPredictionParamsModel(
      age: age,
      estimatedSalary: estimatedSalary,
    );
  }
}
