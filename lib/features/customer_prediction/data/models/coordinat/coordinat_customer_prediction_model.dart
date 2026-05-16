import 'package:freezed_annotation/freezed_annotation.dart';

part 'coordinat_customer_prediction_model.g.dart';

part 'coordinat_customer_prediction_model.freezed.dart';

@freezed
class CoordinateCustomerPredictionModel
    with _$CoordinateCustomerPredictionModel {
  const CoordinateCustomerPredictionModel._();

  const factory CoordinateCustomerPredictionModel({
    @JsonKey(name: 'x_age', defaultValue: 0) required double xAge,
    @JsonKey(name: 'y_estimated_salary', defaultValue: 0)
    required double yEstimatedSalary,
  }) = _CoordinateCustomerPredictionModel;

  factory CoordinateCustomerPredictionModel.fromJson(
    Map<String, dynamic> json,
  ) => _$CoordinateCustomerPredictionModelFromJson(json);
}
