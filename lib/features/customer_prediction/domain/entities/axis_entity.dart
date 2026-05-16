// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class AxisEntity extends Equatable {
  final String xAxis;
  final String yAxis;
  const AxisEntity({required this.xAxis, required this.yAxis});

  AxisEntity copyWith({String? xAxis, String? yAxis}) {
    return AxisEntity(xAxis: xAxis ?? this.xAxis, yAxis: yAxis ?? this.yAxis);
  }

  @override
  List<Object> get props => [xAxis, yAxis];
}
