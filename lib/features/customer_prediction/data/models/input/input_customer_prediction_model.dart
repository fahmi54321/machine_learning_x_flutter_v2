import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_customer_prediction_model.g.dart';

part 'input_customer_prediction_model.freezed.dart';

@freezed
class InputCustomerPredictionModel with _$InputCustomerPredictionModel {
  const InputCustomerPredictionModel._();

  const factory InputCustomerPredictionModel({
    @JsonKey(name: 'age', defaultValue: 0) required double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required double estimatedSalary,
  }) = _InputCustomerPredictionModel;

  factory InputCustomerPredictionModel.fromJson(Map<String, dynamic> json) =>
      _$InputCustomerPredictionModelFromJson(json);
}
