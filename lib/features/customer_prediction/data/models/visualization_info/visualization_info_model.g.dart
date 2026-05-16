// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visualization_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$visualizationInfoModelImpl _$$visualizationInfoModelImplFromJson(
  Map<String, dynamic> json,
) => _$visualizationInfoModelImpl(
  predictionRegion: json['prediction_region'] as String? ?? '',
  xAxis: json['x_axis'] as String? ?? '',
  yAxis: json['y_axis'] as String? ?? '',
);

Map<String, dynamic> _$$visualizationInfoModelImplToJson(
  _$visualizationInfoModelImpl instance,
) => <String, dynamic>{
  'prediction_region': instance.predictionRegion,
  'x_axis': instance.xAxis,
  'y_axis': instance.yAxis,
};
