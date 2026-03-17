import 'package:machine_learning_x_flutter/features/salaries/data/models/salaries_model.dart';
import 'package:machine_learning_x_flutter/features/salaries/domain/entities/prediction/prediction_entity.dart';
import 'package:machine_learning_x_flutter/features/salaries/domain/entities/salaries_entity.dart';
import 'package:machine_learning_x_flutter/features/salaries/domain/entities/visualization/visualization_entity.dart';

extension SalariesModelMapper on SalariesModel {
  SalariesEntity toEntity() {
    return SalariesEntity(
      explanation: explanation,
      predictionEntity: prediction == null
          ? null
          : PredictionEntity(
              currency: prediction!.currency,
              salary: prediction!.salary,
            ),
      visualization: visualization == null
          ? null
          : VisualizationEntity(imageBase64: visualization!.imageBase64),
    );
  }
}
