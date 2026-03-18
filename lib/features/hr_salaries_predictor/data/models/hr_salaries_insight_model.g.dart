// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hr_salaries_insight_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HrSalariesInsightModelImpl _$$HrSalariesInsightModelImplFromJson(
  Map<String, dynamic> json,
) => _$HrSalariesInsightModelImpl(
  category: json['category'] as String? ?? '',
  confidenceNote: json['confidence_note'] as String? ?? '',
  recommendation: json['recommendation'] as String? ?? '',
);

Map<String, dynamic> _$$HrSalariesInsightModelImplToJson(
  _$HrSalariesInsightModelImpl instance,
) => <String, dynamic>{
  'category': instance.category,
  'confidence_note': instance.confidenceNote,
  'recommendation': instance.recommendation,
};
