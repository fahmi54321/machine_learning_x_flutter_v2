// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_prediction_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerPredictionParamsModelImpl
_$$CustomerPredictionParamsModelImplFromJson(Map<String, dynamic> json) =>
    _$CustomerPredictionParamsModelImpl(
      age: (json['age'] as num?)?.toDouble() ?? 0,
      estimatedSalary: (json['estimated_salary'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$CustomerPredictionParamsModelImplToJson(
  _$CustomerPredictionParamsModelImpl instance,
) => <String, dynamic>{
  'age': instance.age,
  'estimated_salary': instance.estimatedSalary,
};
