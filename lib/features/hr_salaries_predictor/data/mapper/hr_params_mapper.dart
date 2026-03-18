import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/data/models/hr_params_model.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_params_entity.dart';

extension HrParamsMapper on HrParamsEntity {
  HrParamsModel toModel() {
    return HrParamsModel(level: level);
  }
}
