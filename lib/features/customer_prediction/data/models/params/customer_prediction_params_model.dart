import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_prediction_params_model.g.dart';

part 'customer_prediction_params_model.freezed.dart';

@freezed
class CustomerPredictionParamsModel with _$CustomerPredictionParamsModel {
  const CustomerPredictionParamsModel._();

  const factory CustomerPredictionParamsModel({
    @JsonKey(name: 'age', defaultValue: 0) required double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required double estimatedSalary,
  }) = _CustomerPredictionParamsModel;

  factory CustomerPredictionParamsModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerPredictionParamsModelFromJson(json);
}
