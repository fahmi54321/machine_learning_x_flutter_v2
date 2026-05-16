// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class DecisionBoundaryEntity extends Equatable {
  final double age;
  final double estimatedSalary;
  final double probability;
  const DecisionBoundaryEntity({
    required this.age,
    required this.estimatedSalary,
    required this.probability,
  });

  DecisionBoundaryEntity copyWith({
    double? age,
    double? estimatedSalary,
    double? probability,
  }) {
    return DecisionBoundaryEntity(
      age: age ?? this.age,
      estimatedSalary: estimatedSalary ?? this.estimatedSalary,
      probability: probability ?? this.probability,
    );
  }

  @override
  List<Object> get props => [age, estimatedSalary, probability];
}
