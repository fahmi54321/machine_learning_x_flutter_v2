// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_point_entity.dart';

class HrVisualization extends Equatable {
  final List<HrPointEntity> curve;
  final List<HrPointEntity> realData;
  final HrPointEntity userPoint;
  const HrVisualization({
    required this.curve,
    required this.realData,
    required this.userPoint,
  });

  @override
  List<Object> get props => [curve, realData, userPoint];

  HrVisualization copyWith({
    List<HrPointEntity>? curve,
    List<HrPointEntity>? realData,
    HrPointEntity? userPoint,
  }) {
    return HrVisualization(
      curve: curve ?? this.curve,
      realData: realData ?? this.realData,
      userPoint: userPoint ?? this.userPoint,
    );
  }
}
