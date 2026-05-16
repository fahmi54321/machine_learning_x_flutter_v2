import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_point_model.g.dart';

part 'customer_point_model.freezed.dart';

@freezed
class CustomerPointModel with _$CustomerPointModel {
  const CustomerPointModel._();

  const factory CustomerPointModel({
    @JsonKey(name: 'actual_class', defaultValue: 0) required int actualClass,
    @JsonKey(name: 'age', defaultValue: 0) required double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required double estimatedSalary,
    @JsonKey(name: 'point_color', defaultValue: '') required String pointColor,
  }) = _CustomerPointModel;

  factory CustomerPointModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerPointModelFromJson(json);
}
