// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class PlotRangeEntity extends Equatable {
  final double xMax;
  final double xMin;
  final double yMax;
  final double yMin;
  const PlotRangeEntity({
    required this.xMax,
    required this.xMin,
    required this.yMax,
    required this.yMin,
  });

  PlotRangeEntity copyWith({
    double? xMax,
    double? xMin,
    double? yMax,
    double? yMin,
  }) {
    return PlotRangeEntity(
      xMax: xMax ?? this.xMax,
      xMin: xMin ?? this.xMin,
      yMax: yMax ?? this.yMax,
      yMin: yMin ?? this.yMin,
    );
  }

  @override
  List<Object> get props => [xMax, xMin, yMax, yMin];
}
