import 'package:freezed_annotation/freezed_annotation.dart';

part 'hr_salaries_prediction_model.g.dart';

part 'hr_salaries_prediction_model.freezed.dart';

@freezed
class HrSalariesPredictionModel with _$HrSalariesPredictionModel {
  const HrSalariesPredictionModel._();

  const factory HrSalariesPredictionModel({
    @JsonKey(name: 'currency', defaultValue: '') required String currency,
    @JsonKey(name: 'formatted', defaultValue: '') required String formatted,
    @JsonKey(name: 'salary', defaultValue: 0) required double salary,
  }) = _HrSalariesPredictionModel;

  factory HrSalariesPredictionModel.fromJson(Map<String, dynamic> json) =>
      _$HrSalariesPredictionModelFromJson(json);
}
