import 'package:equatable/equatable.dart';

import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/axis_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/customer_points_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/decision_boundary_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/legend_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/plot_range_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/prediction_regions_entity.dart';

class PlotDataEntity extends Equatable {
  final AxisEntity axis;
  final List<CustomerPointsEntity> customerPoints;
  final List<DecisionBoundaryEntity> decisionBoundary;
  final LegendEntity legend;
  final String model;
  final PlotRangeEntity plotRange;
  final List<PredictionRegionsEntity> predictionRegions;
  const PlotDataEntity({
    required this.axis,
    required this.customerPoints,
    required this.decisionBoundary,
    required this.legend,
    required this.model,
    required this.plotRange,
    required this.predictionRegions,
  });

  PlotDataEntity copyWith({
    AxisEntity? axis,
    List<CustomerPointsEntity>? customerPoints,
    List<DecisionBoundaryEntity>? decisionBoundary,
    LegendEntity? legend,
    String? model,
    PlotRangeEntity? plotRange,
    List<PredictionRegionsEntity>? predictionRegions,
  }) {
    return PlotDataEntity(
      axis: axis ?? this.axis,
      customerPoints: customerPoints ?? this.customerPoints,
      decisionBoundary: decisionBoundary ?? this.decisionBoundary,
      legend: legend ?? this.legend,
      model: model ?? this.model,
      plotRange: plotRange ?? this.plotRange,
      predictionRegions: predictionRegions ?? this.predictionRegions,
    );
  }

  @override
  List<Object> get props {
    return [
      axis,
      customerPoints,
      decisionBoundary,
      legend,
      model,
      plotRange,
      predictionRegions,
    ];
  }
}
