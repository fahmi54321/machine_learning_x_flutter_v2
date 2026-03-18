import 'package:freezed_annotation/freezed_annotation.dart';

part 'hr_salaries_insight_model.g.dart';

part 'hr_salaries_insight_model.freezed.dart';

@freezed
class HrSalariesInsightModel with _$HrSalariesInsightModel {
  const HrSalariesInsightModel._();

  const factory HrSalariesInsightModel({
    @JsonKey(name: 'category', defaultValue: '') required String category,
    @JsonKey(name: 'confidence_note', defaultValue: '')
    required String confidenceNote,
    @JsonKey(name: 'recommendation', defaultValue: '')
    required String recommendation,
  }) = _HrSalariesInsightModel;

  factory HrSalariesInsightModel.fromJson(Map<String, dynamic> json) =>
      _$HrSalariesInsightModelFromJson(json);
}
