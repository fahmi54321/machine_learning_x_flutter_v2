import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/data/models/hr_salaries_point_model.dart';

part 'hr_salaries_visualization_model.g.dart';

part 'hr_salaries_visualization_model.freezed.dart';

@freezed
class HrSalariesVisualizationModel with _$HrSalariesVisualizationModel {
  const HrSalariesVisualizationModel._();

  const factory HrSalariesVisualizationModel({
    @JsonKey(name: 'curve', defaultValue: [])
    required List<HrSalariesPointModel> curve,
    @JsonKey(name: 'real_data', defaultValue: [])
    required List<HrSalariesPointModel> realData,
    @JsonKey(name: 'user_point') required HrSalariesPointModel? userPoint,
  }) = _HrSalariesVisualizationModel;

  factory HrSalariesVisualizationModel.fromJson(Map<String, dynamic> json) =>
      _$HrSalariesVisualizationModelFromJson(json);
}
