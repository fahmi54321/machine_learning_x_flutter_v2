// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/coordinat_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/input_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/probability_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/scaled_coordinate.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/visualization_info.dart';

class CustomerPredictionEntity extends Equatable {
  final CoorditatEntity coorditatEntity;
  final double decisionBoundaryScore;
  final String description;
  final InputEntity inputEntity;
  final String label;
  final String model;
  final int prediction;
  final ProbabilityEntity probability;
  final ScaledCoordinate scaledCoordinate;
  final VisualizationInfo visualizationInfo;
  const CustomerPredictionEntity({
    required this.coorditatEntity,
    required this.decisionBoundaryScore,
    required this.description,
    required this.inputEntity,
    required this.label,
    required this.model,
    required this.prediction,
    required this.probability,
    required this.scaledCoordinate,
    required this.visualizationInfo,
  });

  CustomerPredictionEntity copyWith({
    CoorditatEntity? coorditatEntity,
    double? decisionBoundaryScore,
    String? description,
    InputEntity? inputEntity,
    String? label,
    String? model,
    int? prediction,
    ProbabilityEntity? probability,
    ScaledCoordinate? scaledCoordinate,
    VisualizationInfo? visualizationInfo,
  }) {
    return CustomerPredictionEntity(
      coorditatEntity: coorditatEntity ?? this.coorditatEntity,
      decisionBoundaryScore:
          decisionBoundaryScore ?? this.decisionBoundaryScore,
      description: description ?? this.description,
      inputEntity: inputEntity ?? this.inputEntity,
      label: label ?? this.label,
      model: model ?? this.model,
      prediction: prediction ?? this.prediction,
      probability: probability ?? this.probability,
      scaledCoordinate: scaledCoordinate ?? this.scaledCoordinate,
      visualizationInfo: visualizationInfo ?? this.visualizationInfo,
    );
  }

  @override
  List<Object> get props {
    return [
      coorditatEntity,
      decisionBoundaryScore,
      description,
      inputEntity,
      label,
      model,
      prediction,
      probability,
      scaledCoordinate,
      visualizationInfo,
    ];
  }
}
