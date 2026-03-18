// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:machine_learning_x_flutter/features/*/domain/entities/params_entity.dart';

class HrParamsEntity extends ParamsEntity {
  final double level;
  HrParamsEntity({required this.level});

  @override
  List<Object?> get props => [level];
}
