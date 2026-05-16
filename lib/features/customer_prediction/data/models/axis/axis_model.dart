import 'package:freezed_annotation/freezed_annotation.dart';

part 'axis_model.g.dart';

part 'axis_model.freezed.dart';

@freezed
class AxisModel with _$AxisModel {
  const AxisModel._();

  const factory AxisModel({
    @JsonKey(name: 'x_axis', defaultValue: '') required String xAxis,
    @JsonKey(name: 'y_axis', defaultValue: '') required String yAxis,
  }) = _AxisModel;

  factory AxisModel.fromJson(Map<String, dynamic> json) =>
      _$AxisModelFromJson(json);
}
