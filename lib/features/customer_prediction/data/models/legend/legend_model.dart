import 'package:freezed_annotation/freezed_annotation.dart';

part 'legend_model.g.dart';

part 'legend_model.freezed.dart';

@freezed
class LegendModel with _$LegendModel {
  const LegendModel._();

  const factory LegendModel({
    @JsonKey(name: 'dodgerblue', defaultValue: '') required String dodgerblue,
    @JsonKey(name: 'salmon', defaultValue: '') required String salmon,
  }) = _LegendModel;

  factory LegendModel.fromJson(Map<String, dynamic> json) =>
      _$LegendModelFromJson(json);
}
