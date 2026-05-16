// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinat_customer_prediction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoordinateCustomerPredictionModelImpl
_$$CoordinateCustomerPredictionModelImplFromJson(Map<String, dynamic> json) =>
    _$CoordinateCustomerPredictionModelImpl(
      xAge: (json['x_age'] as num?)?.toDouble() ?? 0,
      yEstimatedSalary: (json['y_estimated_salary'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$CoordinateCustomerPredictionModelImplToJson(
  _$CoordinateCustomerPredictionModelImpl instance,
) => <String, dynamic>{
  'x_age': instance.xAge,
  'y_estimated_salary': instance.yEstimatedSalary,
};
