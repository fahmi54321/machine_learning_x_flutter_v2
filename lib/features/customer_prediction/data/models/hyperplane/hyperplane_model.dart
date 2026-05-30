import 'package:freezed_annotation/freezed_annotation.dart';

part 'hyperplane_model.g.dart';

part 'hyperplane_model.freezed.dart';

@freezed
class HyperplaneModel with _$HyperplaneModel {
  const HyperplaneModel._();

  const factory HyperplaneModel({
    @JsonKey(name: 'age', defaultValue: 0) required double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required double estimatedSalary,
    @JsonKey(name: 'hyperplane_type', defaultValue: '')
    required String hyperplaneType,
  }) = _HyperplaneModel;

  factory HyperplaneModel.fromJson(Map<String, dynamic> json) =>
      _$HyperplaneModelFromJson(json);
}
