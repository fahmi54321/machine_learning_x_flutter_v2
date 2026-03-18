import 'package:freezed_annotation/freezed_annotation.dart';

part 'hr_params_model.g.dart';

part 'hr_params_model.freezed.dart';

@freezed
class HrParamsModel with _$HrParamsModel {
  const HrParamsModel._();

  const factory HrParamsModel({
    @JsonKey(name: 'level', defaultValue: 0) required double level,
  }) = _HrParamsModel;

  factory HrParamsModel.fromJson(Map<String, dynamic> json) =>
      _$HrParamsModelFromJson(json);
}
