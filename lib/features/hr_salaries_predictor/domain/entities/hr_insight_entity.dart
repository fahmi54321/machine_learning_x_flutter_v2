// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class HrInsightEntitie extends Equatable {
  final String category;
  final String confidenceNote;
  final String recommendation;

  const HrInsightEntitie({
    required this.category,
    required this.confidenceNote,
    required this.recommendation,
  });

  HrInsightEntitie copyWith({
    String? category,
    String? confidenceNote,
    String? recommendation,
  }) {
    return HrInsightEntitie(
      category: category ?? this.category,
      confidenceNote: confidenceNote ?? this.confidenceNote,
      recommendation: recommendation ?? this.recommendation,
    );
  }

  @override
  List<Object> get props => [category, confidenceNote, recommendation];

  @override
  bool get stringify => true;
}
