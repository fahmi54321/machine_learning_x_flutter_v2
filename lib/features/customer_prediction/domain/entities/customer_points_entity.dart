// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class CustomerPointsEntity extends Equatable {
  final int actualClass;
  final double age;
  final double estimatedSalary;
  final String pointColor;
  const CustomerPointsEntity({
    required this.actualClass,
    required this.age,
    required this.estimatedSalary,
    required this.pointColor,
  });

  CustomerPointsEntity copyWith({
    int? actualClass,
    double? age,
    double? estimatedSalary,
    String? pointColor,
  }) {
    return CustomerPointsEntity(
      actualClass: actualClass ?? this.actualClass,
      age: age ?? this.age,
      estimatedSalary: estimatedSalary ?? this.estimatedSalary,
      pointColor: pointColor ?? this.pointColor,
    );
  }

  @override
  List<Object> get props => [actualClass, age, estimatedSalary, pointColor];
}
