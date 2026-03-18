// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class HrPointEntity extends Equatable {
  final double x;
  final double y;
  const HrPointEntity({required this.x, required this.y});

  HrPointEntity copyWith({double? x, double? y}) {
    return HrPointEntity(x: x ?? this.x, y: y ?? this.y);
  }

  @override
  List<Object> get props => [x, y];
}
