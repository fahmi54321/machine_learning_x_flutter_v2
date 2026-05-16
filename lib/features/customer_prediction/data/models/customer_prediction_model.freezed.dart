// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_prediction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CustomerPredictionModel _$CustomerPredictionModelFromJson(
  Map<String, dynamic> json,
) {
  return _CustomerPredictionModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerPredictionModel {
  @JsonKey(name: 'coordinate')
  CoordinateCustomerPredictionModel? get coordinate =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'decision_boundary_score', defaultValue: 0)
  double get decisionBoundaryScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'description', defaultValue: '')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'input')
  InputCustomerPredictionModel? get input => throw _privateConstructorUsedError;
  @JsonKey(name: 'label', defaultValue: '')
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'model', defaultValue: '')
  String get model => throw _privateConstructorUsedError;
  @JsonKey(name: 'prediction', defaultValue: 0)
  double get prediction => throw _privateConstructorUsedError;
  @JsonKey(name: 'probability')
  ProbabilityModel? get probability => throw _privateConstructorUsedError;
  @JsonKey(name: 'scaled_coordinate')
  ScaledCoordinateCustomerPredictionModel? get scaledCoordinate =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'visualization_info')
  visualizationInfoModel? get visualizationInfo =>
      throw _privateConstructorUsedError;

  /// Serializes this CustomerPredictionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerPredictionModelCopyWith<CustomerPredictionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerPredictionModelCopyWith<$Res> {
  factory $CustomerPredictionModelCopyWith(
    CustomerPredictionModel value,
    $Res Function(CustomerPredictionModel) then,
  ) = _$CustomerPredictionModelCopyWithImpl<$Res, CustomerPredictionModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'coordinate') CoordinateCustomerPredictionModel? coordinate,
    @JsonKey(name: 'decision_boundary_score', defaultValue: 0)
    double decisionBoundaryScore,
    @JsonKey(name: 'description', defaultValue: '') String description,
    @JsonKey(name: 'input') InputCustomerPredictionModel? input,
    @JsonKey(name: 'label', defaultValue: '') String label,
    @JsonKey(name: 'model', defaultValue: '') String model,
    @JsonKey(name: 'prediction', defaultValue: 0) double prediction,
    @JsonKey(name: 'probability') ProbabilityModel? probability,
    @JsonKey(name: 'scaled_coordinate')
    ScaledCoordinateCustomerPredictionModel? scaledCoordinate,
    @JsonKey(name: 'visualization_info')
    visualizationInfoModel? visualizationInfo,
  });

  $CoordinateCustomerPredictionModelCopyWith<$Res>? get coordinate;
  $InputCustomerPredictionModelCopyWith<$Res>? get input;
  $ProbabilityModelCopyWith<$Res>? get probability;
  $ScaledCoordinateCustomerPredictionModelCopyWith<$Res>? get scaledCoordinate;
  $visualizationInfoModelCopyWith<$Res>? get visualizationInfo;
}

/// @nodoc
class _$CustomerPredictionModelCopyWithImpl<
  $Res,
  $Val extends CustomerPredictionModel
>
    implements $CustomerPredictionModelCopyWith<$Res> {
  _$CustomerPredictionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinate = freezed,
    Object? decisionBoundaryScore = null,
    Object? description = null,
    Object? input = freezed,
    Object? label = null,
    Object? model = null,
    Object? prediction = null,
    Object? probability = freezed,
    Object? scaledCoordinate = freezed,
    Object? visualizationInfo = freezed,
  }) {
    return _then(
      _value.copyWith(
            coordinate: freezed == coordinate
                ? _value.coordinate
                : coordinate // ignore: cast_nullable_to_non_nullable
                      as CoordinateCustomerPredictionModel?,
            decisionBoundaryScore: null == decisionBoundaryScore
                ? _value.decisionBoundaryScore
                : decisionBoundaryScore // ignore: cast_nullable_to_non_nullable
                      as double,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            input: freezed == input
                ? _value.input
                : input // ignore: cast_nullable_to_non_nullable
                      as InputCustomerPredictionModel?,
            label: null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String,
            model: null == model
                ? _value.model
                : model // ignore: cast_nullable_to_non_nullable
                      as String,
            prediction: null == prediction
                ? _value.prediction
                : prediction // ignore: cast_nullable_to_non_nullable
                      as double,
            probability: freezed == probability
                ? _value.probability
                : probability // ignore: cast_nullable_to_non_nullable
                      as ProbabilityModel?,
            scaledCoordinate: freezed == scaledCoordinate
                ? _value.scaledCoordinate
                : scaledCoordinate // ignore: cast_nullable_to_non_nullable
                      as ScaledCoordinateCustomerPredictionModel?,
            visualizationInfo: freezed == visualizationInfo
                ? _value.visualizationInfo
                : visualizationInfo // ignore: cast_nullable_to_non_nullable
                      as visualizationInfoModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of CustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCustomerPredictionModelCopyWith<$Res>? get coordinate {
    if (_value.coordinate == null) {
      return null;
    }

    return $CoordinateCustomerPredictionModelCopyWith<$Res>(
      _value.coordinate!,
      (value) {
        return _then(_value.copyWith(coordinate: value) as $Val);
      },
    );
  }

  /// Create a copy of CustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputCustomerPredictionModelCopyWith<$Res>? get input {
    if (_value.input == null) {
      return null;
    }

    return $InputCustomerPredictionModelCopyWith<$Res>(_value.input!, (value) {
      return _then(_value.copyWith(input: value) as $Val);
    });
  }

  /// Create a copy of CustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProbabilityModelCopyWith<$Res>? get probability {
    if (_value.probability == null) {
      return null;
    }

    return $ProbabilityModelCopyWith<$Res>(_value.probability!, (value) {
      return _then(_value.copyWith(probability: value) as $Val);
    });
  }

  /// Create a copy of CustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScaledCoordinateCustomerPredictionModelCopyWith<$Res>? get scaledCoordinate {
    if (_value.scaledCoordinate == null) {
      return null;
    }

    return $ScaledCoordinateCustomerPredictionModelCopyWith<$Res>(
      _value.scaledCoordinate!,
      (value) {
        return _then(_value.copyWith(scaledCoordinate: value) as $Val);
      },
    );
  }

  /// Create a copy of CustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $visualizationInfoModelCopyWith<$Res>? get visualizationInfo {
    if (_value.visualizationInfo == null) {
      return null;
    }

    return $visualizationInfoModelCopyWith<$Res>(_value.visualizationInfo!, (
      value,
    ) {
      return _then(_value.copyWith(visualizationInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerPredictionModelImplCopyWith<$Res>
    implements $CustomerPredictionModelCopyWith<$Res> {
  factory _$$CustomerPredictionModelImplCopyWith(
    _$CustomerPredictionModelImpl value,
    $Res Function(_$CustomerPredictionModelImpl) then,
  ) = __$$CustomerPredictionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'coordinate') CoordinateCustomerPredictionModel? coordinate,
    @JsonKey(name: 'decision_boundary_score', defaultValue: 0)
    double decisionBoundaryScore,
    @JsonKey(name: 'description', defaultValue: '') String description,
    @JsonKey(name: 'input') InputCustomerPredictionModel? input,
    @JsonKey(name: 'label', defaultValue: '') String label,
    @JsonKey(name: 'model', defaultValue: '') String model,
    @JsonKey(name: 'prediction', defaultValue: 0) double prediction,
    @JsonKey(name: 'probability') ProbabilityModel? probability,
    @JsonKey(name: 'scaled_coordinate')
    ScaledCoordinateCustomerPredictionModel? scaledCoordinate,
    @JsonKey(name: 'visualization_info')
    visualizationInfoModel? visualizationInfo,
  });

  @override
  $CoordinateCustomerPredictionModelCopyWith<$Res>? get coordinate;
  @override
  $InputCustomerPredictionModelCopyWith<$Res>? get input;
  @override
  $ProbabilityModelCopyWith<$Res>? get probability;
  @override
  $ScaledCoordinateCustomerPredictionModelCopyWith<$Res>? get scaledCoordinate;
  @override
  $visualizationInfoModelCopyWith<$Res>? get visualizationInfo;
}

/// @nodoc
class __$$CustomerPredictionModelImplCopyWithImpl<$Res>
    extends
        _$CustomerPredictionModelCopyWithImpl<
          $Res,
          _$CustomerPredictionModelImpl
        >
    implements _$$CustomerPredictionModelImplCopyWith<$Res> {
  __$$CustomerPredictionModelImplCopyWithImpl(
    _$CustomerPredictionModelImpl _value,
    $Res Function(_$CustomerPredictionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinate = freezed,
    Object? decisionBoundaryScore = null,
    Object? description = null,
    Object? input = freezed,
    Object? label = null,
    Object? model = null,
    Object? prediction = null,
    Object? probability = freezed,
    Object? scaledCoordinate = freezed,
    Object? visualizationInfo = freezed,
  }) {
    return _then(
      _$CustomerPredictionModelImpl(
        coordinate: freezed == coordinate
            ? _value.coordinate
            : coordinate // ignore: cast_nullable_to_non_nullable
                  as CoordinateCustomerPredictionModel?,
        decisionBoundaryScore: null == decisionBoundaryScore
            ? _value.decisionBoundaryScore
            : decisionBoundaryScore // ignore: cast_nullable_to_non_nullable
                  as double,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        input: freezed == input
            ? _value.input
            : input // ignore: cast_nullable_to_non_nullable
                  as InputCustomerPredictionModel?,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        model: null == model
            ? _value.model
            : model // ignore: cast_nullable_to_non_nullable
                  as String,
        prediction: null == prediction
            ? _value.prediction
            : prediction // ignore: cast_nullable_to_non_nullable
                  as double,
        probability: freezed == probability
            ? _value.probability
            : probability // ignore: cast_nullable_to_non_nullable
                  as ProbabilityModel?,
        scaledCoordinate: freezed == scaledCoordinate
            ? _value.scaledCoordinate
            : scaledCoordinate // ignore: cast_nullable_to_non_nullable
                  as ScaledCoordinateCustomerPredictionModel?,
        visualizationInfo: freezed == visualizationInfo
            ? _value.visualizationInfo
            : visualizationInfo // ignore: cast_nullable_to_non_nullable
                  as visualizationInfoModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerPredictionModelImpl extends _CustomerPredictionModel {
  const _$CustomerPredictionModelImpl({
    @JsonKey(name: 'coordinate') this.coordinate,
    @JsonKey(name: 'decision_boundary_score', defaultValue: 0)
    required this.decisionBoundaryScore,
    @JsonKey(name: 'description', defaultValue: '') required this.description,
    @JsonKey(name: 'input') this.input,
    @JsonKey(name: 'label', defaultValue: '') required this.label,
    @JsonKey(name: 'model', defaultValue: '') required this.model,
    @JsonKey(name: 'prediction', defaultValue: 0) required this.prediction,
    @JsonKey(name: 'probability') this.probability,
    @JsonKey(name: 'scaled_coordinate') this.scaledCoordinate,
    @JsonKey(name: 'visualization_info') this.visualizationInfo,
  }) : super._();

  factory _$CustomerPredictionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerPredictionModelImplFromJson(json);

  @override
  @JsonKey(name: 'coordinate')
  final CoordinateCustomerPredictionModel? coordinate;
  @override
  @JsonKey(name: 'decision_boundary_score', defaultValue: 0)
  final double decisionBoundaryScore;
  @override
  @JsonKey(name: 'description', defaultValue: '')
  final String description;
  @override
  @JsonKey(name: 'input')
  final InputCustomerPredictionModel? input;
  @override
  @JsonKey(name: 'label', defaultValue: '')
  final String label;
  @override
  @JsonKey(name: 'model', defaultValue: '')
  final String model;
  @override
  @JsonKey(name: 'prediction', defaultValue: 0)
  final double prediction;
  @override
  @JsonKey(name: 'probability')
  final ProbabilityModel? probability;
  @override
  @JsonKey(name: 'scaled_coordinate')
  final ScaledCoordinateCustomerPredictionModel? scaledCoordinate;
  @override
  @JsonKey(name: 'visualization_info')
  final visualizationInfoModel? visualizationInfo;

  @override
  String toString() {
    return 'CustomerPredictionModel(coordinate: $coordinate, decisionBoundaryScore: $decisionBoundaryScore, description: $description, input: $input, label: $label, model: $model, prediction: $prediction, probability: $probability, scaledCoordinate: $scaledCoordinate, visualizationInfo: $visualizationInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerPredictionModelImpl &&
            (identical(other.coordinate, coordinate) ||
                other.coordinate == coordinate) &&
            (identical(other.decisionBoundaryScore, decisionBoundaryScore) ||
                other.decisionBoundaryScore == decisionBoundaryScore) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.prediction, prediction) ||
                other.prediction == prediction) &&
            (identical(other.probability, probability) ||
                other.probability == probability) &&
            (identical(other.scaledCoordinate, scaledCoordinate) ||
                other.scaledCoordinate == scaledCoordinate) &&
            (identical(other.visualizationInfo, visualizationInfo) ||
                other.visualizationInfo == visualizationInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    coordinate,
    decisionBoundaryScore,
    description,
    input,
    label,
    model,
    prediction,
    probability,
    scaledCoordinate,
    visualizationInfo,
  );

  /// Create a copy of CustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerPredictionModelImplCopyWith<_$CustomerPredictionModelImpl>
  get copyWith =>
      __$$CustomerPredictionModelImplCopyWithImpl<
        _$CustomerPredictionModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerPredictionModelImplToJson(this);
  }
}

abstract class _CustomerPredictionModel extends CustomerPredictionModel {
  const factory _CustomerPredictionModel({
    @JsonKey(name: 'coordinate')
    final CoordinateCustomerPredictionModel? coordinate,
    @JsonKey(name: 'decision_boundary_score', defaultValue: 0)
    required final double decisionBoundaryScore,
    @JsonKey(name: 'description', defaultValue: '')
    required final String description,
    @JsonKey(name: 'input') final InputCustomerPredictionModel? input,
    @JsonKey(name: 'label', defaultValue: '') required final String label,
    @JsonKey(name: 'model', defaultValue: '') required final String model,
    @JsonKey(name: 'prediction', defaultValue: 0)
    required final double prediction,
    @JsonKey(name: 'probability') final ProbabilityModel? probability,
    @JsonKey(name: 'scaled_coordinate')
    final ScaledCoordinateCustomerPredictionModel? scaledCoordinate,
    @JsonKey(name: 'visualization_info')
    final visualizationInfoModel? visualizationInfo,
  }) = _$CustomerPredictionModelImpl;
  const _CustomerPredictionModel._() : super._();

  factory _CustomerPredictionModel.fromJson(Map<String, dynamic> json) =
      _$CustomerPredictionModelImpl.fromJson;

  @override
  @JsonKey(name: 'coordinate')
  CoordinateCustomerPredictionModel? get coordinate;
  @override
  @JsonKey(name: 'decision_boundary_score', defaultValue: 0)
  double get decisionBoundaryScore;
  @override
  @JsonKey(name: 'description', defaultValue: '')
  String get description;
  @override
  @JsonKey(name: 'input')
  InputCustomerPredictionModel? get input;
  @override
  @JsonKey(name: 'label', defaultValue: '')
  String get label;
  @override
  @JsonKey(name: 'model', defaultValue: '')
  String get model;
  @override
  @JsonKey(name: 'prediction', defaultValue: 0)
  double get prediction;
  @override
  @JsonKey(name: 'probability')
  ProbabilityModel? get probability;
  @override
  @JsonKey(name: 'scaled_coordinate')
  ScaledCoordinateCustomerPredictionModel? get scaledCoordinate;
  @override
  @JsonKey(name: 'visualization_info')
  visualizationInfoModel? get visualizationInfo;

  /// Create a copy of CustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerPredictionModelImplCopyWith<_$CustomerPredictionModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
