import 'package:freezed_annotation/freezed_annotation.dart';

part 'hr_salaries_meta_model.g.dart';

part 'hr_salaries_meta_model.freezed.dart';

@freezed
class HrSalariesMetaModel with _$HrSalariesMetaModel {
  const HrSalariesMetaModel._();

  const factory HrSalariesMetaModel({
    @JsonKey(name: 'model', defaultValue: '') required String model,
    @JsonKey(name: 'degree', defaultValue: 0) required int degree,
  }) = _HrSalariesMetaModel;

  factory HrSalariesMetaModel.fromJson(Map<String, dynamic> json) =>
      _$HrSalariesMetaModelFromJson(json);
}
