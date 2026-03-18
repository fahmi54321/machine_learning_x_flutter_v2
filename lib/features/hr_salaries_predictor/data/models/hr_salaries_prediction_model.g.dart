// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hr_salaries_prediction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HrSalariesPredictionModelImpl _$$HrSalariesPredictionModelImplFromJson(
  Map<String, dynamic> json,
) => _$HrSalariesPredictionModelImpl(
  currency: json['currency'] as String? ?? '',
  formatted: json['formatted'] as String? ?? '',
  salary: (json['salary'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$$HrSalariesPredictionModelImplToJson(
  _$HrSalariesPredictionModelImpl instance,
) => <String, dynamic>{
  'currency': instance.currency,
  'formatted': instance.formatted,
  'salary': instance.salary,
};
