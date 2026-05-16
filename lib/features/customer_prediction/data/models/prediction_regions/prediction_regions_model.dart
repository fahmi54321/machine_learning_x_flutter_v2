import 'package:freezed_annotation/freezed_annotation.dart';

part 'prediction_regions_model.g.dart';

part 'prediction_regions_model.freezed.dart';

@freezed
class PredictionRegionsModel with _$PredictionRegionsModel {
  const PredictionRegionsModel._();

  const factory PredictionRegionsModel({
    @JsonKey(name: 'age', defaultValue: 0) required double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required double estimatedSalary,
    @JsonKey(name: 'prediction', defaultValue: 0) required int prediction,
    @JsonKey(name: 'region_color', defaultValue: '')
    required String regionColor,
  }) = _PredictionRegionsModel;

  factory PredictionRegionsModel.fromJson(Map<String, dynamic> json) =>
      _$PredictionRegionsModelFromJson(json);
}
