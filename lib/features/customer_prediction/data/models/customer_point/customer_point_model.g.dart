// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_point_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerPointModelImpl _$$CustomerPointModelImplFromJson(
  Map<String, dynamic> json,
) => _$CustomerPointModelImpl(
  actualClass: (json['actual_class'] as num?)?.toInt() ?? 0,
  age: (json['age'] as num?)?.toDouble() ?? 0,
  estimatedSalary: (json['estimated_salary'] as num?)?.toDouble() ?? 0,
  pointColor: json['point_color'] as String? ?? '',
);

Map<String, dynamic> _$$CustomerPointModelImplToJson(
  _$CustomerPointModelImpl instance,
) => <String, dynamic>{
  'actual_class': instance.actualClass,
  'age': instance.age,
  'estimated_salary': instance.estimatedSalary,
  'point_color': instance.pointColor,
};
