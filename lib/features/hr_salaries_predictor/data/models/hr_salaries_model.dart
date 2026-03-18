import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/data/models/hr_salaries_insight_model.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/data/models/hr_salaries_meta_model.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/data/models/hr_salaries_prediction_model.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/data/models/hr_salaries_visualization_model.dart';

part 'hr_salaries_model.g.dart';

part 'hr_salaries_model.freezed.dart';

@freezed
class HrSalariesModel with _$HrSalariesModel {
  const HrSalariesModel._();

  const factory HrSalariesModel({
    @JsonKey(name: 'insight') HrSalariesInsightModel? insight,
    @JsonKey(name: 'meta') HrSalariesMetaModel? meta,
    @JsonKey(name: 'prediction') HrSalariesPredictionModel? prediction,
    @JsonKey(name: 'visualization') HrSalariesVisualizationModel? visualization,
  }) = _HrSalariesModel;

  factory HrSalariesModel.fromJson(Map<String, dynamic> json) =>
      _$HrSalariesModelFromJson(json);
}
