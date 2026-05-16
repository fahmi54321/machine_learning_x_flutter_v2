// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class VisualizationInfo extends Equatable {
  final String predictionRegion;
  final String xAxis;
  final String yAxis;
  const VisualizationInfo({
    required this.predictionRegion,
    required this.xAxis,
    required this.yAxis,
  });

  VisualizationInfo copyWith({
    String? predictionRegion,
    String? xAxis,
    String? yAxis,
  }) {
    return VisualizationInfo(
      predictionRegion: predictionRegion ?? this.predictionRegion,
      xAxis: xAxis ?? this.xAxis,
      yAxis: yAxis ?? this.yAxis,
    );
  }

  @override
  List<Object> get props => [predictionRegion, xAxis, yAxis];
}
