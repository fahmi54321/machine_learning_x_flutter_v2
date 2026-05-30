// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_vector_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupportVectorModelImpl _$$SupportVectorModelImplFromJson(
  Map<String, dynamic> json,
) => _$SupportVectorModelImpl(
  age: (json['age'] as num?)?.toDouble() ?? 0,
  estimatedSalary: (json['estimated_salary'] as num?)?.toDouble() ?? 0,
  pointColor: json['point_color'] as String? ?? '',
  pointType: json['point_type'] as String? ?? '',
);

Map<String, dynamic> _$$SupportVectorModelImplToJson(
  _$SupportVectorModelImpl instance,
) => <String, dynamic>{
  'age': instance.age,
  'estimated_salary': instance.estimatedSalary,
  'point_color': instance.pointColor,
  'point_type': instance.pointType,
};
