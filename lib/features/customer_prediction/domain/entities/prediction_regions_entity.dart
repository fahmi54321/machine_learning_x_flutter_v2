// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class PredictionRegionsEntity extends Equatable {
  final double age;
  final double estimatedSalary;
  final int prediction;
  final String regionColor;
  const PredictionRegionsEntity({
    required this.age,
    required this.estimatedSalary,
    required this.prediction,
    required this.regionColor,
  });

  PredictionRegionsEntity copyWith({
    double? age,
    double? estimatedSalary,
    int? prediction,
    String? regionColor,
  }) {
    return PredictionRegionsEntity(
      age: age ?? this.age,
      estimatedSalary: estimatedSalary ?? this.estimatedSalary,
      prediction: prediction ?? this.prediction,
      regionColor: regionColor ?? this.regionColor,
    );
  }

  @override
  List<Object> get props => [age, estimatedSalary, prediction, regionColor];
}
