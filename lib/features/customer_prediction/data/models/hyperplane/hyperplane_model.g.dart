// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hyperplane_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HyperplaneModelImpl _$$HyperplaneModelImplFromJson(
  Map<String, dynamic> json,
) => _$HyperplaneModelImpl(
  age: (json['age'] as num?)?.toDouble() ?? 0,
  estimatedSalary: (json['estimated_salary'] as num?)?.toDouble() ?? 0,
  hyperplaneType: json['hyperplane_type'] as String? ?? '',
);

Map<String, dynamic> _$$HyperplaneModelImplToJson(
  _$HyperplaneModelImpl instance,
) => <String, dynamic>{
  'age': instance.age,
  'estimated_salary': instance.estimatedSalary,
  'hyperplane_type': instance.hyperplaneType,
};
