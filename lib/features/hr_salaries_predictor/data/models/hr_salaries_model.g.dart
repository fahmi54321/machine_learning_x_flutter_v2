// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hr_salaries_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HrSalariesModelImpl _$$HrSalariesModelImplFromJson(
  Map<String, dynamic> json,
) => _$HrSalariesModelImpl(
  insight: json['insight'] == null
      ? null
      : HrSalariesInsightModel.fromJson(
          json['insight'] as Map<String, dynamic>,
        ),
  meta: json['meta'] == null
      ? null
      : HrSalariesMetaModel.fromJson(json['meta'] as Map<String, dynamic>),
  prediction: json['prediction'] == null
      ? null
      : HrSalariesPredictionModel.fromJson(
          json['prediction'] as Map<String, dynamic>,
        ),
  visualization: json['visualization'] == null
      ? null
      : HrSalariesVisualizationModel.fromJson(
          json['visualization'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$HrSalariesModelImplToJson(
  _$HrSalariesModelImpl instance,
) => <String, dynamic>{
  'insight': instance.insight,
  'meta': instance.meta,
  'prediction': instance.prediction,
  'visualization': instance.visualization,
};
