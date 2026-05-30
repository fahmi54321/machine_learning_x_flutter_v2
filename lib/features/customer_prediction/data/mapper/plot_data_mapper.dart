import 'package:machine_learning_x_flutter/features/customer_prediction/data/models/plot_data_model.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/axis_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/customer_points_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/decision_boundary_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/hyperplane_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/legend_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/plot_data_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/plot_range_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/prediction_regions_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/support_vector_entity.dart';

extension PlotDataMapper on PlotDataModel {
  PlotDataEntity toEntity() {
    return PlotDataEntity(
      axis: AxisEntity(xAxis: axis?.xAxis ?? '', yAxis: axis?.yAxis ?? ''),
      customerPoints: customerPoints
          .map(
            (item) => CustomerPointsEntity(
              actualClass: item.actualClass,
              age: item.age,
              estimatedSalary: item.estimatedSalary,
              pointColor: item.pointColor,
            ),
          )
          .toList(),
      decisionBoundary: decisionBoundary
          .map(
            (item) => DecisionBoundaryEntity(
              age: item.age,
              estimatedSalary: item.estimatedSalary,
              probability: item.probability,
            ),
          )
          .toList(),
      negativeHyperplane: negativeHyperplane
          .map(
            (item) => HyperplaneEntity(
              age: item.age,
              estimatedSalary: item.estimatedSalary,
              hyperplaneType: item.hyperplaneType,
            ),
          )
          .toList(),
      positiveHyperplane: positiveHyperplane
          .map(
            (item) => HyperplaneEntity(
              age: item.age,
              estimatedSalary: item.estimatedSalary,
              hyperplaneType: item.hyperplaneType,
            ),
          )
          .toList(),
      supportVectors: supportVectors
          .map(
            (item) => SupportVectorEntity(
              age: item.age,
              estimatedSalary: item.estimatedSalary,
              pointColor: item.pointColor,
              pointType: item.pointType,
            ),
          )
          .toList(),
      legend: LegendEntity(
        dodgerblue: legend?.dodgerblue ?? '',
        salmon: legend?.salmon ?? '',
      ),
      model: model,
      plotRange: PlotRangeEntity(
        xMax: plotRange?.xMax ?? 0,
        xMin: plotRange?.xMin ?? 0,
        yMax: plotRange?.yMax ?? 0,
        yMin: plotRange?.yMin ?? 0,
      ),
      predictionRegions: predictionRegions
          .map(
            (item) => PredictionRegionsEntity(
              age: item.age,
              estimatedSalary: item.estimatedSalary,
              prediction: item.prediction,
              regionColor: item.regionColor,
            ),
          )
          .toList(),
    );
  }
}
