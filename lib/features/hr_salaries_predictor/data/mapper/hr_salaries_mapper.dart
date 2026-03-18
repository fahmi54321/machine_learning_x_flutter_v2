import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/data/models/hr_salaries_model.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_insight_entity.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_meta_entity.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_point_entity.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_prediction_entity.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_salaries_entity.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_visualization.dart';

extension HrSalariesMapper on HrSalariesModel {
  HrSalariesEntity toEntity() {
    return HrSalariesEntity(
      hrInsightEntitie: HrInsightEntitie(
        category: insight?.category ?? '',
        confidenceNote: insight?.confidenceNote ?? '',
        recommendation: insight?.recommendation ?? '',
      ),
      hrMetaEntity: HrMetaEntity(
        degree: meta?.degree ?? 0,
        model: meta?.model ?? '',
      ),
      hrPredictionEntity: HrPredictionEntity(
        currency: prediction?.currency ?? '',
        formatted: prediction?.formatted ?? '',
        salary: prediction?.salary ?? 0,
      ),
      hrVisualization: HrVisualization(
        curve: (visualization?.curve ?? [])
            .map((item) => HrPointEntity(x: item.x, y: item.y))
            .toList(),
        realData: (visualization?.realData ?? [])
            .map((item) => HrPointEntity(x: item.x, y: item.y))
            .toList(),
        userPoint: HrPointEntity(
          x: visualization?.userPoint?.x ?? 0,
          y: visualization?.userPoint?.y ?? 0,
        ),
      ),
    );
  }
}
