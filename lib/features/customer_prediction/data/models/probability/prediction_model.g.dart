// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProbabilityModelImpl _$$ProbabilityModelImplFromJson(
  Map<String, dynamic> json,
) => _$ProbabilityModelImpl(
  buySuv: (json['buy_suv'] as num?)?.toDouble() ?? 0,
  notBuySuv: (json['not_buy_suv'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$$ProbabilityModelImplToJson(
  _$ProbabilityModelImpl instance,
) => <String, dynamic>{
  'buy_suv': instance.buySuv,
  'not_buy_suv': instance.notBuySuv,
};
