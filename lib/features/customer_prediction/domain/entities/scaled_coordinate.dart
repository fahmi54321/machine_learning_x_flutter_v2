// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ScaledCoordinate extends Equatable {
  final double xScaledAge;
  final double yScaledEstimatedSalary;
  const ScaledCoordinate({
    required this.xScaledAge,
    required this.yScaledEstimatedSalary,
  });

  @override
  List<Object> get props => [xScaledAge, yScaledEstimatedSalary];

  ScaledCoordinate copyWith({
    double? xScaledAge,
    double? yScaledEstimatedSalary,
  }) {
    return ScaledCoordinate(
      xScaledAge: xScaledAge ?? this.xScaledAge,
      yScaledEstimatedSalary:
          yScaledEstimatedSalary ?? this.yScaledEstimatedSalary,
    );
  }
}
