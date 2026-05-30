import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_vector_model.g.dart';

part 'support_vector_model.freezed.dart';

@freezed
class SupportVectorModel with _$SupportVectorModel {
  const SupportVectorModel._();

  const factory SupportVectorModel({
    @JsonKey(name: 'age', defaultValue: 0) required double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required double estimatedSalary,
    @JsonKey(name: 'point_color', defaultValue: '') required String pointColor,
    @JsonKey(name: 'point_type', defaultValue: '') required String pointType,
  }) = _SupportVectorModel;

  factory SupportVectorModel.fromJson(Map<String, dynamic> json) =>
      _$SupportVectorModelFromJson(json);
}
