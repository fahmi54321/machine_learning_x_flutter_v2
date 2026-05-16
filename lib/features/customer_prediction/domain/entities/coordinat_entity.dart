// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class CoorditatEntity extends Equatable {
  final double xAge;
  final double yEstimatedSalary;
  const CoorditatEntity({required this.xAge, required this.yEstimatedSalary});

  CoorditatEntity copyWith({double? xAge, double? yEstimatedSalary}) {
    return CoorditatEntity(
      xAge: xAge ?? this.xAge,
      yEstimatedSalary: yEstimatedSalary ?? this.yEstimatedSalary,
    );
  }

  @override
  List<Object> get props => [xAge, yEstimatedSalary];
}
