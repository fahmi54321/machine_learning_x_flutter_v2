// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_prediction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerPredictionModelImpl _$$CustomerPredictionModelImplFromJson(
  Map<String, dynamic> json,
) => _$CustomerPredictionModelImpl(
  coordinate: json['coordinate'] == null
      ? null
      : CoordinateCustomerPredictionModel.fromJson(
          json['coordinate'] as Map<String, dynamic>,
        ),
  decisionBoundaryScore:
      (json['decision_boundary_score'] as num?)?.toDouble() ?? 0,
  description: json['description'] as String? ?? '',
  input: json['input'] == null
      ? null
      : InputCustomerPredictionModel.fromJson(
          json['input'] as Map<String, dynamic>,
        ),
  label: json['label'] as String? ?? '',
  model: json['model'] as String? ?? '',
  prediction: (json['prediction'] as num?)?.toDouble() ?? 0,
  probability: json['probability'] == null
      ? null
      : ProbabilityModel.fromJson(json['probability'] as Map<String, dynamic>),
  scaledCoordinate: json['scaled_coordinate'] == null
      ? null
      : ScaledCoordinateCustomerPredictionModel.fromJson(
          json['scaled_coordinate'] as Map<String, dynamic>,
        ),
  visualizationInfo: json['visualization_info'] == null
      ? null
      : visualizationInfoModel.fromJson(
          json['visualization_info'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$CustomerPredictionModelImplToJson(
  _$CustomerPredictionModelImpl instance,
) => <String, dynamic>{
  'coordinate': instance.coordinate,
  'decision_boundary_score': instance.decisionBoundaryScore,
  'description': instance.description,
  'input': instance.input,
  'label': instance.label,
  'model': instance.model,
  'prediction': instance.prediction,
  'probability': instance.probability,
  'scaled_coordinate': instance.scaledCoordinate,
  'visualization_info': instance.visualizationInfo,
};
