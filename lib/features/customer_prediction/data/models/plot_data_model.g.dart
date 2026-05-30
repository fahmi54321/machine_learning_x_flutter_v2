// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plot_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlotDataModelImpl _$$PlotDataModelImplFromJson(
  Map<String, dynamic> json,
) => _$PlotDataModelImpl(
  axis: json['axis'] == null
      ? null
      : AxisModel.fromJson(json['axis'] as Map<String, dynamic>),
  customerPoints:
      (json['customer_points'] as List<dynamic>?)
          ?.map((e) => CustomerPointModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  decisionBoundary:
      (json['decision_boundary'] as List<dynamic>?)
          ?.map(
            (e) => DecisionBoundaryModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      [],
  negativeHyperplane:
      (json['negative_hyperplane'] as List<dynamic>?)
          ?.map((e) => HyperplaneModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  positiveHyperplane:
      (json['positive_hyperplane'] as List<dynamic>?)
          ?.map((e) => HyperplaneModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  supportVectors:
      (json['support_vectors'] as List<dynamic>?)
          ?.map((e) => SupportVectorModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  legend: json['legend'] == null
      ? null
      : LegendModel.fromJson(json['legend'] as Map<String, dynamic>),
  model: json['model'] as String? ?? '',
  plotRange: json['plot_range'] == null
      ? null
      : PlotRangeModel.fromJson(json['plot_range'] as Map<String, dynamic>),
  predictionRegions:
      (json['prediction_regions'] as List<dynamic>?)
          ?.map(
            (e) => PredictionRegionsModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      [],
);

Map<String, dynamic> _$$PlotDataModelImplToJson(_$PlotDataModelImpl instance) =>
    <String, dynamic>{
      'axis': instance.axis,
      'customer_points': instance.customerPoints,
      'decision_boundary': instance.decisionBoundary,
      'negative_hyperplane': instance.negativeHyperplane,
      'positive_hyperplane': instance.positiveHyperplane,
      'support_vectors': instance.supportVectors,
      'legend': instance.legend,
      'model': instance.model,
      'plot_range': instance.plotRange,
      'prediction_regions': instance.predictionRegions,
    };
