// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_customer_prediction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputCustomerPredictionModelImpl _$$InputCustomerPredictionModelImplFromJson(
  Map<String, dynamic> json,
) => _$InputCustomerPredictionModelImpl(
  age: (json['age'] as num?)?.toDouble() ?? 0,
  estimatedSalary: (json['estimated_salary'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$$InputCustomerPredictionModelImplToJson(
  _$InputCustomerPredictionModelImpl instance,
) => <String, dynamic>{
  'age': instance.age,
  'estimated_salary': instance.estimatedSalary,
};
