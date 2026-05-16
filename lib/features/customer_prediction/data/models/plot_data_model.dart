import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/models/axis/axis_model.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/models/customer_point/customer_point_model.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/models/decision_boundary/decision_boundary_model.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/models/legend/legend_model.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/models/plot_range/plot_range_model.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/models/prediction_regions/prediction_regions_model.dart';

part 'plot_data_model.g.dart';

part 'plot_data_model.freezed.dart';

@freezed
class PlotDataModel with _$PlotDataModel {
  const PlotDataModel._();

  const factory PlotDataModel({
    @JsonKey(name: 'axis') AxisModel? axis,
    @JsonKey(name: 'customer_points', defaultValue: [])
    required List<CustomerPointModel> customerPoints,
    @JsonKey(name: 'decision_boundary', defaultValue: [])
    required List<DecisionBoundaryModel> decisionBoundary,
    @JsonKey(name: 'legend') LegendModel? legend,
    @JsonKey(name: 'model', defaultValue: '') required String model,
    @JsonKey(name: 'plot_range') PlotRangeModel? plotRange,
    @JsonKey(name: 'prediction_regions', defaultValue: [])
    required List<PredictionRegionsModel> predictionRegions,
  }) = _PlotDataModel;

  factory PlotDataModel.fromJson(Map<String, dynamic> json) =>
      _$PlotDataModelFromJson(json);
}
