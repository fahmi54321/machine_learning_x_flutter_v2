// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class SupportVectorEntity extends Equatable {
  final double age;
  final double estimatedSalary;
  final String pointColor;
  final String pointType;
  const SupportVectorEntity({
    required this.age,
    required this.estimatedSalary,
    required this.pointColor,
    required this.pointType,
  });

  SupportVectorEntity copyWith({
    double? age,
    double? estimatedSalary,
    String? pointColor,
    String? pointType,
  }) {
    return SupportVectorEntity(
      age: age ?? this.age,
      estimatedSalary: estimatedSalary ?? this.estimatedSalary,
      pointColor: pointColor ?? this.pointColor,
      pointType: pointType ?? this.pointType,
    );
  }

  @override
  List<Object> get props => [age, estimatedSalary, pointColor, pointType];
}
