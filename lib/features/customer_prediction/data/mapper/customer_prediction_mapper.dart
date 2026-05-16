import 'package:machine_learning_x_flutter/features/customer_prediction/data/models/customer_prediction_model.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/coordinat_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/customer_prediction_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/input_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/probability_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/scaled_coordinate.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/visualization_info.dart';

extension CustomerPredictionMapper on CustomerPredictionModel {
  CustomerPredictionEntity toEntity() {
    return CustomerPredictionEntity(
      coorditatEntity: CoorditatEntity(
        xAge: coordinate?.xAge ?? 0,
        yEstimatedSalary: coordinate?.yEstimatedSalary ?? 0,
      ),
      decisionBoundaryScore: decisionBoundaryScore,
      description: description,
      inputEntity: InputEntity(
        age: input?.age ?? 0,
        estimatedSalary: input?.estimatedSalary ?? 0,
      ),
      label: label,
      model: model,
      prediction: prediction.toInt(),
      probability: ProbabilityEntity(
        buySuv: probability?.buySuv ?? 0,
        notBuySuv: probability?.notBuySuv ?? 0,
      ),
      scaledCoordinate: ScaledCoordinate(
        xScaledAge: scaledCoordinate?.xScaledAge ?? 0,
        yScaledEstimatedSalary: scaledCoordinate?.yScaledEstimatedSalary ?? 0,
      ),
      visualizationInfo: VisualizationInfo(
        predictionRegion: visualizationInfo?.predictionRegion ?? '',
        xAxis: visualizationInfo?.xAxis ?? '',
        yAxis: visualizationInfo?.yAxis ?? '',
      ),
    );
  }
}
