// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hr_salaries_meta_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HrSalariesMetaModelImpl _$$HrSalariesMetaModelImplFromJson(
  Map<String, dynamic> json,
) => _$HrSalariesMetaModelImpl(
  model: json['model'] as String? ?? '',
  degree: (json['degree'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$HrSalariesMetaModelImplToJson(
  _$HrSalariesMetaModelImpl instance,
) => <String, dynamic>{'model': instance.model, 'degree': instance.degree};
