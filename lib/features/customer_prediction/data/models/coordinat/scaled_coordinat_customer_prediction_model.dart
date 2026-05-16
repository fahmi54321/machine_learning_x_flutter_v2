import 'package:freezed_annotation/freezed_annotation.dart';

part 'scaled_coordinat_customer_prediction_model.g.dart';

part 'scaled_coordinat_customer_prediction_model.freezed.dart';

@freezed
class ScaledCoordinateCustomerPredictionModel
    with _$ScaledCoordinateCustomerPredictionModel {
  const ScaledCoordinateCustomerPredictionModel._();

  const factory ScaledCoordinateCustomerPredictionModel({
    @JsonKey(name: 'x_scaled_age', defaultValue: 0) required double xScaledAge,
    @JsonKey(name: 'y_scaled_estimated_salary', defaultValue: 0)
    required double yScaledEstimatedSalary,
  }) = _ScaledCoordinateCustomerPredictionModel;

  factory ScaledCoordinateCustomerPredictionModel.fromJson(
    Map<String, dynamic> json,
  ) => _$ScaledCoordinateCustomerPredictionModelFromJson(json);
}
