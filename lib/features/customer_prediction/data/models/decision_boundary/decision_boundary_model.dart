import 'package:freezed_annotation/freezed_annotation.dart';

part 'decision_boundary_model.g.dart';

part 'decision_boundary_model.freezed.dart';

@freezed
class DecisionBoundaryModel with _$DecisionBoundaryModel {
  const DecisionBoundaryModel._();

  const factory DecisionBoundaryModel({
    @JsonKey(name: 'age', defaultValue: 0) required double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required double estimatedSalary,
    @JsonKey(name: 'probability', defaultValue: 0) required double probability,
  }) = _DecisionBoundaryModel;

  factory DecisionBoundaryModel.fromJson(Map<String, dynamic> json) =>
      _$DecisionBoundaryModelFromJson(json);
}
