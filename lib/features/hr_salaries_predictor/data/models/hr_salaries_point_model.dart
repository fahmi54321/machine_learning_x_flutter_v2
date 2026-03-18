import 'package:freezed_annotation/freezed_annotation.dart';

part 'hr_salaries_point_model.g.dart';

part 'hr_salaries_point_model.freezed.dart';

@freezed
class HrSalariesPointModel with _$HrSalariesPointModel {
  const HrSalariesPointModel._();

  const factory HrSalariesPointModel({
    @JsonKey(name: 'x', defaultValue: 0) required double x,
    @JsonKey(name: 'y', defaultValue: 0) required double y,
  }) = _HrSalariesPointModel;

  factory HrSalariesPointModel.fromJson(Map<String, dynamic> json) =>
      _$HrSalariesPointModelFromJson(json);
}
