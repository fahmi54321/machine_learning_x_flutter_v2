// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction_regions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PredictionRegionsModelImpl _$$PredictionRegionsModelImplFromJson(
  Map<String, dynamic> json,
) => _$PredictionRegionsModelImpl(
  age: (json['age'] as num?)?.toDouble() ?? 0,
  estimatedSalary: (json['estimated_salary'] as num?)?.toDouble() ?? 0,
  prediction: (json['prediction'] as num?)?.toInt() ?? 0,
  regionColor: json['region_color'] as String? ?? '',
);

Map<String, dynamic> _$$PredictionRegionsModelImplToJson(
  _$PredictionRegionsModelImpl instance,
) => <String, dynamic>{
  'age': instance.age,
  'estimated_salary': instance.estimatedSalary,
  'prediction': instance.prediction,
  'region_color': instance.regionColor,
};
