// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'predict_cubit.dart';

enum PredictStatus { initial, loading, success, error }

enum SalariesAction {
  predict(name: 'salaries predict');

  const SalariesAction({required this.name});
  final String name;
}

class PredictState extends Equatable {
  final FormValue<String> yearsOfExperience;
  final SalariesEntity? salariesEntity;
  final PredictStatus predictStatus;
  final Uint8List? visualizationImage;

  const PredictState({
    required this.yearsOfExperience,
    this.salariesEntity,
    required this.predictStatus,
    this.visualizationImage,
  });

  @override
  List<Object?> get props {
    return [
      yearsOfExperience,
      salariesEntity,
      predictStatus,
      visualizationImage,
    ];
  }

  factory PredictState.initial() {
    return PredictState(
      yearsOfExperience: FormValue(
        value: '',
        validationStatus: ValidationStatus.initial,
      ),
      predictStatus: PredictStatus.initial,
    );
  }

  PredictState copyWith({
    FormValue<String>? yearsOfExperience,
    SalariesEntity? salariesEntity,
    PredictStatus? predictStatus,
    Uint8List? visualizationImage,
  }) {
    return PredictState(
      yearsOfExperience: yearsOfExperience ?? this.yearsOfExperience,
      salariesEntity: salariesEntity ?? this.salariesEntity,
      predictStatus: predictStatus ?? this.predictStatus,
      visualizationImage: visualizationImage ?? this.visualizationImage,
    );
  }
}
