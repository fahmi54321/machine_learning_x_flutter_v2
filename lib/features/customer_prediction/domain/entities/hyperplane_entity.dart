// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class HyperplaneEntity extends Equatable {
  final double age;
  final double estimatedSalary;
  final String hyperplaneType;
  const HyperplaneEntity({
    required this.age,
    required this.estimatedSalary,
    required this.hyperplaneType,
  });

  HyperplaneEntity copyWith({
    double? age,
    double? estimatedSalary,
    String? hyperplaneType,
  }) {
    return HyperplaneEntity(
      age: age ?? this.age,
      estimatedSalary: estimatedSalary ?? this.estimatedSalary,
      hyperplaneType: hyperplaneType ?? this.hyperplaneType,
    );
  }

  @override
  List<Object> get props => [age, estimatedSalary, hyperplaneType];
}
