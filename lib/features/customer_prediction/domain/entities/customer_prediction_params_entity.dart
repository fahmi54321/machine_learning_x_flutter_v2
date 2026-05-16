// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class CustomerPredictionParamsEntity extends Equatable {
  final double age;
  final double estimatedSalary;
  const CustomerPredictionParamsEntity({
    required this.age,
    required this.estimatedSalary,
  });

  CustomerPredictionParamsEntity copyWith({
    double? age,
    double? estimatedSalary,
  }) {
    return CustomerPredictionParamsEntity(
      age: age ?? this.age,
      estimatedSalary: estimatedSalary ?? this.estimatedSalary,
    );
  }

  @override
  List<Object> get props => [age, estimatedSalary];
}
