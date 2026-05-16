import 'package:freezed_annotation/freezed_annotation.dart';

part 'prediction_model.g.dart';

part 'prediction_model.freezed.dart';

@freezed
class ProbabilityModel with _$ProbabilityModel {
  const ProbabilityModel._();

  const factory ProbabilityModel({
    @JsonKey(name: 'buy_suv', defaultValue: 0) required double buySuv,
    @JsonKey(name: 'not_buy_suv', defaultValue: 0) required double notBuySuv,
  }) = _ProbabilityModel;

  factory ProbabilityModel.fromJson(Map<String, dynamic> json) =>
      _$ProbabilityModelFromJson(json);
}
