// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ProbabilityEntity extends Equatable {
  final double buySuv;
  final double notBuySuv;
  const ProbabilityEntity({required this.buySuv, required this.notBuySuv});

  ProbabilityEntity copyWith({double? buySuv, double? notBuySuv}) {
    return ProbabilityEntity(
      buySuv: buySuv ?? this.buySuv,
      notBuySuv: notBuySuv ?? this.notBuySuv,
    );
  }

  @override
  List<Object> get props => [buySuv, notBuySuv];
}
