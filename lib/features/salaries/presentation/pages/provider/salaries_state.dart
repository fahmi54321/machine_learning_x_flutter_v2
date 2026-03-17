// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:typed_data';

import 'package:equatable/equatable.dart';

import 'package:machine_learning_x_flutter/features/salaries/domain/entities/salaries_entity.dart';
import 'package:machine_learning_x_flutter/shared/form/form_value.dart';
import 'package:machine_learning_x_flutter/features/salaries/presentation/pages/cubit/predict_cubit.dart';

class SalariesState extends Equatable {
  final FormValue<String> yearsOfExperience;
  final SalariesEntity? salariesEntity;
  final PredictStatus predictStatus;
  final Uint8List? visualizationImage;
  const SalariesState({
    required this.yearsOfExperience,
    this.salariesEntity,
    required this.predictStatus,
    this.visualizationImage,
  });

  factory SalariesState.initial() {
    return SalariesState(
      yearsOfExperience: FormValue(
        value: '',
        validationStatus: ValidationStatus.initial,
      ),
      predictStatus: PredictStatus.initial,
    );
  }

  SalariesState copyWith({
    FormValue<String>? yearsOfExperience,
    SalariesEntity? salariesEntity,
    PredictStatus? predictStatus,
    Uint8List? visualizationImage,
  }) {
    return SalariesState(
      yearsOfExperience: yearsOfExperience ?? this.yearsOfExperience,
      salariesEntity: salariesEntity ?? this.salariesEntity,
      predictStatus: predictStatus ?? this.predictStatus,
      visualizationImage: visualizationImage ?? this.visualizationImage,
    );
  }

  @override
  List<Object?> get props => [
    yearsOfExperience,
    salariesEntity,
    predictStatus,
    visualizationImage,
  ];
}
