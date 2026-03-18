// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class HrMetaEntity extends Equatable {
  final int degree;
  final String model;
  const HrMetaEntity({required this.degree, required this.model});

  HrMetaEntity copyWith({int? degree, String? model}) {
    return HrMetaEntity(
      degree: degree ?? this.degree,
      model: model ?? this.model,
    );
  }

  @override
  List<Object> get props => [degree, model];
}
