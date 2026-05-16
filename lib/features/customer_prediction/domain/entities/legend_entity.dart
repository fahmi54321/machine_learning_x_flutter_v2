// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class LegendEntity extends Equatable {
  final String dodgerblue;
  final String salmon;
  const LegendEntity({required this.dodgerblue, required this.salmon});

  @override
  List<Object> get props => [dodgerblue, salmon];

  LegendEntity copyWith({String? dodgerblue, String? salmon}) {
    return LegendEntity(
      dodgerblue: dodgerblue ?? this.dodgerblue,
      salmon: salmon ?? this.salmon,
    );
  }
}
