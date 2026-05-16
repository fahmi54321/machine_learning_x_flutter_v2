// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decision_boundary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DecisionBoundaryModelImpl _$$DecisionBoundaryModelImplFromJson(
  Map<String, dynamic> json,
) => _$DecisionBoundaryModelImpl(
  age: (json['age'] as num?)?.toDouble() ?? 0,
  estimatedSalary: (json['estimated_salary'] as num?)?.toDouble() ?? 0,
  probability: (json['probability'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$$DecisionBoundaryModelImplToJson(
  _$DecisionBoundaryModelImpl instance,
) => <String, dynamic>{
  'age': instance.age,
  'estimated_salary': instance.estimatedSalary,
  'probability': instance.probability,
};
