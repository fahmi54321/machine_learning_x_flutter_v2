// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class HrPredictionEntity extends Equatable {
  final String currency;
  final String formatted;
  final double salary;
  const HrPredictionEntity({
    required this.currency,
    required this.formatted,
    required this.salary,
  });

  HrPredictionEntity copyWith({
    String? currency,
    String? formatted,
    double? salary,
  }) {
    return HrPredictionEntity(
      currency: currency ?? this.currency,
      formatted: formatted ?? this.formatted,
      salary: salary ?? this.salary,
    );
  }

  @override
  List<Object> get props => [currency, formatted, salary];
}
