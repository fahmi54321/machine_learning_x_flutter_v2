// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/customer_prediction_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/plot_data_entity.dart';
import 'package:machine_learning_x_flutter/shared/form/form_value.dart';

enum CustomerPredictionAction { predict, plotData }

enum PredictionStatus { initial, loading, success, error }

enum PlotDataStatus { initial, loading, success, error }

class CustomerPredictionState extends Equatable {
  final CustomerPredictionEntity? customerPredictionEntity;
  final PlotDataEntity? plotDataEntity;
  final PredictionStatus predictionStatus;
  final PlotDataStatus plotDataStatus;
  final FormValue<String> age;
  final FormValue<String> estimatedSalary;
  const CustomerPredictionState({
    this.customerPredictionEntity,
    this.plotDataEntity,
    required this.predictionStatus,
    required this.plotDataStatus,
    required this.age,
    required this.estimatedSalary,
  });

  factory CustomerPredictionState.initial() {
    return CustomerPredictionState(
      predictionStatus: PredictionStatus.initial,
      plotDataStatus: PlotDataStatus.initial,
      age: FormValue(value: '24', validationStatus: ValidationStatus.valid),
      estimatedSalary: FormValue(
        value: '25000',
        validationStatus: ValidationStatus.valid,
      ),
    );
  }

  CustomerPredictionState copyWith({
    CustomerPredictionEntity? customerPredictionEntity,
    PlotDataEntity? plotDataEntity,
    PredictionStatus? predictionStatus,
    PlotDataStatus? plotDataStatus,
    FormValue<String>? age,
    FormValue<String>? estimatedSalary,
  }) {
    return CustomerPredictionState(
      customerPredictionEntity:
          customerPredictionEntity ?? this.customerPredictionEntity,
      plotDataEntity: plotDataEntity ?? this.plotDataEntity,
      predictionStatus: predictionStatus ?? this.predictionStatus,
      plotDataStatus: plotDataStatus ?? this.plotDataStatus,
      age: age ?? this.age,
      estimatedSalary: estimatedSalary ?? this.estimatedSalary,
    );
  }

  @override
  List<Object?> get props {
    return [
      customerPredictionEntity,
      plotDataEntity,
      predictionStatus,
      plotDataStatus,
      age,
      estimatedSalary,
    ];
  }
}
