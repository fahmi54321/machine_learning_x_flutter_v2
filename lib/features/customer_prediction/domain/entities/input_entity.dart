// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class InputEntity extends Equatable {
  final double age;
  final double estimatedSalary;
  const InputEntity({required this.age, required this.estimatedSalary});

  @override
  List<Object> get props => [age, estimatedSalary];

  InputEntity copyWith({double? age, double? estimatedSalary}) {
    return InputEntity(
      age: age ?? this.age,
      estimatedSalary: estimatedSalary ?? this.estimatedSalary,
    );
  }
}
