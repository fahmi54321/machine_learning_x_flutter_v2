import 'package:freezed_annotation/freezed_annotation.dart';

part 'plot_range_model.g.dart';

part 'plot_range_model.freezed.dart';

@freezed
class PlotRangeModel with _$PlotRangeModel {
  const PlotRangeModel._();

  const factory PlotRangeModel({
    @JsonKey(name: 'x_max', defaultValue: 0) required double xMax,
    @JsonKey(name: 'x_min', defaultValue: 0) required double xMin,
    @JsonKey(name: 'y_max', defaultValue: 0) required double yMax,
    @JsonKey(name: 'y_min', defaultValue: 0) required double yMin,
  }) = _PlotRangeModel;

  factory PlotRangeModel.fromJson(Map<String, dynamic> json) =>
      _$PlotRangeModelFromJson(json);
}
