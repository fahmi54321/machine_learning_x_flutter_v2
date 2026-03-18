// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'hr_salaries_predictor_cubit.dart';

enum HrSalariesPredictorStatus { initial, loading, success, error }

enum HrSalariesPredictorAction { predict }

class HrSalariesPredictorState extends Equatable {
  final HrSalariesPredictorStatus hrSalariesPresictorSatus;
  final FormValue<String> level;
  final HrSalariesEntity? hrSalariesEntity;

  final HrPointEntity? touchedSpot;
  const HrSalariesPredictorState({
    required this.hrSalariesPresictorSatus,
    required this.level,
    this.hrSalariesEntity,
    this.touchedSpot,
  });

  factory HrSalariesPredictorState.initial() {
    return HrSalariesPredictorState(
      hrSalariesPresictorSatus: HrSalariesPredictorStatus.initial,
      level: FormValue(value: '6.5', validationStatus: ValidationStatus.valid),
    );
  }

  HrSalariesPredictorState copyWith({
    HrSalariesPredictorStatus? hrSalariesPresictorSatus,
    FormValue<String>? level,
    HrSalariesEntity? hrSalariesEntity,
    HrPointEntity? touchedSpot,
  }) {
    return HrSalariesPredictorState(
      hrSalariesPresictorSatus:
          hrSalariesPresictorSatus ?? this.hrSalariesPresictorSatus,
      level: level ?? this.level,
      hrSalariesEntity: hrSalariesEntity ?? this.hrSalariesEntity,
      touchedSpot: touchedSpot ?? this.touchedSpot,
    );
  }

  @override
  List<Object?> get props => [
    hrSalariesPresictorSatus,
    level,
    hrSalariesEntity,
    touchedSpot,
  ];
}
