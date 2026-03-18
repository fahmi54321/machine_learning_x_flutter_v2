// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_insight_entity.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_meta_entity.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_prediction_entity.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_visualization.dart';

class HrSalariesEntity extends Equatable {
  final HrInsightEntitie hrInsightEntitie;
  final HrMetaEntity hrMetaEntity;
  final HrPredictionEntity hrPredictionEntity;
  final HrVisualization hrVisualization;
  const HrSalariesEntity({
    required this.hrInsightEntitie,
    required this.hrMetaEntity,
    required this.hrPredictionEntity,
    required this.hrVisualization,
  });

  HrSalariesEntity copyWith({
    HrInsightEntitie? hrInsightEntitie,
    HrMetaEntity? hrMetaEntity,
    HrPredictionEntity? hrPredictionEntity,
    HrVisualization? hrVisualization,
  }) {
    return HrSalariesEntity(
      hrInsightEntitie: hrInsightEntitie ?? this.hrInsightEntitie,
      hrMetaEntity: hrMetaEntity ?? this.hrMetaEntity,
      hrPredictionEntity: hrPredictionEntity ?? this.hrPredictionEntity,
      hrVisualization: hrVisualization ?? this.hrVisualization,
    );
  }

  @override
  List<Object> get props => [
    hrInsightEntitie,
    hrMetaEntity,
    hrPredictionEntity,
    hrVisualization,
  ];
}
