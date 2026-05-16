// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plot_range_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlotRangeModelImpl _$$PlotRangeModelImplFromJson(Map<String, dynamic> json) =>
    _$PlotRangeModelImpl(
      xMax: (json['x_max'] as num?)?.toDouble() ?? 0,
      xMin: (json['x_min'] as num?)?.toDouble() ?? 0,
      yMax: (json['y_max'] as num?)?.toDouble() ?? 0,
      yMin: (json['y_min'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$PlotRangeModelImplToJson(
  _$PlotRangeModelImpl instance,
) => <String, dynamic>{
  'x_max': instance.xMax,
  'x_min': instance.xMin,
  'y_max': instance.yMax,
  'y_min': instance.yMin,
};
