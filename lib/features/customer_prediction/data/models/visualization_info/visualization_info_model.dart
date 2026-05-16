import 'package:freezed_annotation/freezed_annotation.dart';

part 'visualization_info_model.g.dart';

part 'visualization_info_model.freezed.dart';

@freezed
class visualizationInfoModel with _$visualizationInfoModel {
  const visualizationInfoModel._();

  const factory visualizationInfoModel({
    @JsonKey(name: 'prediction_region', defaultValue: '')
    required String predictionRegion,
    @JsonKey(name: 'x_axis', defaultValue: '') required String xAxis,
    @JsonKey(name: 'y_axis', defaultValue: '') required String yAxis,
  }) = _visualizationInfoModel;

  factory visualizationInfoModel.fromJson(Map<String, dynamic> json) =>
      _$visualizationInfoModelFromJson(json);
}
