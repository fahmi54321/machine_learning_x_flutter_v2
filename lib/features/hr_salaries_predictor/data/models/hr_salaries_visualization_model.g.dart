// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hr_salaries_visualization_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HrSalariesVisualizationModelImpl _$$HrSalariesVisualizationModelImplFromJson(
  Map<String, dynamic> json,
) => _$HrSalariesVisualizationModelImpl(
  curve:
      (json['curve'] as List<dynamic>?)
          ?.map((e) => HrSalariesPointModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  realData:
      (json['real_data'] as List<dynamic>?)
          ?.map((e) => HrSalariesPointModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  userPoint: json['user_point'] == null
      ? null
      : HrSalariesPointModel.fromJson(
          json['user_point'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$HrSalariesVisualizationModelImplToJson(
  _$HrSalariesVisualizationModelImpl instance,
) => <String, dynamic>{
  'curve': instance.curve,
  'real_data': instance.realData,
  'user_point': instance.userPoint,
};
