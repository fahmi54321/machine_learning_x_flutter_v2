// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scaled_coordinat_customer_prediction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScaledCoordinateCustomerPredictionModelImpl
_$$ScaledCoordinateCustomerPredictionModelImplFromJson(
  Map<String, dynamic> json,
) => _$ScaledCoordinateCustomerPredictionModelImpl(
  xScaledAge: (json['x_scaled_age'] as num?)?.toDouble() ?? 0,
  yScaledEstimatedSalary:
      (json['y_scaled_estimated_salary'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$$ScaledCoordinateCustomerPredictionModelImplToJson(
  _$ScaledCoordinateCustomerPredictionModelImpl instance,
) => <String, dynamic>{
  'x_scaled_age': instance.xScaledAge,
  'y_scaled_estimated_salary': instance.yScaledEstimatedSalary,
};
