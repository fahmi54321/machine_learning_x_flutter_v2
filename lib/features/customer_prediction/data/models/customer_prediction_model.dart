import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/models/coordinat/coordinat_customer_prediction_model.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/models/coordinat/scaled_coordinat_customer_prediction_model.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/models/input/input_customer_prediction_model.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/models/probability/prediction_model.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/models/visualization_info/visualization_info_model.dart';

part 'customer_prediction_model.g.dart';

part 'customer_prediction_model.freezed.dart';

@freezed
class CustomerPredictionModel with _$CustomerPredictionModel {
  const CustomerPredictionModel._();

  const factory CustomerPredictionModel({
    @JsonKey(name: 'coordinate') CoordinateCustomerPredictionModel? coordinate,
    @JsonKey(name: 'decision_boundary_score', defaultValue: 0)
    required double decisionBoundaryScore,
    @JsonKey(name: 'description', defaultValue: '') required String description,
    @JsonKey(name: 'input') InputCustomerPredictionModel? input,
    @JsonKey(name: 'label', defaultValue: '') required String label,
    @JsonKey(name: 'model', defaultValue: '') required String model,
    @JsonKey(name: 'prediction', defaultValue: 0) required double prediction,
    @JsonKey(name: 'probability') ProbabilityModel? probability,
    @JsonKey(name: 'scaled_coordinate')
    ScaledCoordinateCustomerPredictionModel? scaledCoordinate,
    @JsonKey(name: 'visualization_info')
    visualizationInfoModel? visualizationInfo,
  }) = _CustomerPredictionModel;

  factory CustomerPredictionModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerPredictionModelFromJson(json);
}
