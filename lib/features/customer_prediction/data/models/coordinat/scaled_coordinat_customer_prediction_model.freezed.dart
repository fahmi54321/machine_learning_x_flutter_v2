// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scaled_coordinat_customer_prediction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ScaledCoordinateCustomerPredictionModel
_$ScaledCoordinateCustomerPredictionModelFromJson(Map<String, dynamic> json) {
  return _ScaledCoordinateCustomerPredictionModel.fromJson(json);
}

/// @nodoc
mixin _$ScaledCoordinateCustomerPredictionModel {
  @JsonKey(name: 'x_scaled_age', defaultValue: 0)
  double get xScaledAge => throw _privateConstructorUsedError;
  @JsonKey(name: 'y_scaled_estimated_salary', defaultValue: 0)
  double get yScaledEstimatedSalary => throw _privateConstructorUsedError;

  /// Serializes this ScaledCoordinateCustomerPredictionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScaledCoordinateCustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScaledCoordinateCustomerPredictionModelCopyWith<
    ScaledCoordinateCustomerPredictionModel
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScaledCoordinateCustomerPredictionModelCopyWith<$Res> {
  factory $ScaledCoordinateCustomerPredictionModelCopyWith(
    ScaledCoordinateCustomerPredictionModel value,
    $Res Function(ScaledCoordinateCustomerPredictionModel) then,
  ) =
      _$ScaledCoordinateCustomerPredictionModelCopyWithImpl<
        $Res,
        ScaledCoordinateCustomerPredictionModel
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'x_scaled_age', defaultValue: 0) double xScaledAge,
    @JsonKey(name: 'y_scaled_estimated_salary', defaultValue: 0)
    double yScaledEstimatedSalary,
  });
}

/// @nodoc
class _$ScaledCoordinateCustomerPredictionModelCopyWithImpl<
  $Res,
  $Val extends ScaledCoordinateCustomerPredictionModel
>
    implements $ScaledCoordinateCustomerPredictionModelCopyWith<$Res> {
  _$ScaledCoordinateCustomerPredictionModelCopyWithImpl(
    this._value,
    this._then,
  );

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScaledCoordinateCustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xScaledAge = null,
    Object? yScaledEstimatedSalary = null,
  }) {
    return _then(
      _value.copyWith(
            xScaledAge: null == xScaledAge
                ? _value.xScaledAge
                : xScaledAge // ignore: cast_nullable_to_non_nullable
                      as double,
            yScaledEstimatedSalary: null == yScaledEstimatedSalary
                ? _value.yScaledEstimatedSalary
                : yScaledEstimatedSalary // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ScaledCoordinateCustomerPredictionModelImplCopyWith<$Res>
    implements $ScaledCoordinateCustomerPredictionModelCopyWith<$Res> {
  factory _$$ScaledCoordinateCustomerPredictionModelImplCopyWith(
    _$ScaledCoordinateCustomerPredictionModelImpl value,
    $Res Function(_$ScaledCoordinateCustomerPredictionModelImpl) then,
  ) = __$$ScaledCoordinateCustomerPredictionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'x_scaled_age', defaultValue: 0) double xScaledAge,
    @JsonKey(name: 'y_scaled_estimated_salary', defaultValue: 0)
    double yScaledEstimatedSalary,
  });
}

/// @nodoc
class __$$ScaledCoordinateCustomerPredictionModelImplCopyWithImpl<$Res>
    extends
        _$ScaledCoordinateCustomerPredictionModelCopyWithImpl<
          $Res,
          _$ScaledCoordinateCustomerPredictionModelImpl
        >
    implements _$$ScaledCoordinateCustomerPredictionModelImplCopyWith<$Res> {
  __$$ScaledCoordinateCustomerPredictionModelImplCopyWithImpl(
    _$ScaledCoordinateCustomerPredictionModelImpl _value,
    $Res Function(_$ScaledCoordinateCustomerPredictionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScaledCoordinateCustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xScaledAge = null,
    Object? yScaledEstimatedSalary = null,
  }) {
    return _then(
      _$ScaledCoordinateCustomerPredictionModelImpl(
        xScaledAge: null == xScaledAge
            ? _value.xScaledAge
            : xScaledAge // ignore: cast_nullable_to_non_nullable
                  as double,
        yScaledEstimatedSalary: null == yScaledEstimatedSalary
            ? _value.yScaledEstimatedSalary
            : yScaledEstimatedSalary // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ScaledCoordinateCustomerPredictionModelImpl
    extends _ScaledCoordinateCustomerPredictionModel {
  const _$ScaledCoordinateCustomerPredictionModelImpl({
    @JsonKey(name: 'x_scaled_age', defaultValue: 0) required this.xScaledAge,
    @JsonKey(name: 'y_scaled_estimated_salary', defaultValue: 0)
    required this.yScaledEstimatedSalary,
  }) : super._();

  factory _$ScaledCoordinateCustomerPredictionModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ScaledCoordinateCustomerPredictionModelImplFromJson(json);

  @override
  @JsonKey(name: 'x_scaled_age', defaultValue: 0)
  final double xScaledAge;
  @override
  @JsonKey(name: 'y_scaled_estimated_salary', defaultValue: 0)
  final double yScaledEstimatedSalary;

  @override
  String toString() {
    return 'ScaledCoordinateCustomerPredictionModel(xScaledAge: $xScaledAge, yScaledEstimatedSalary: $yScaledEstimatedSalary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScaledCoordinateCustomerPredictionModelImpl &&
            (identical(other.xScaledAge, xScaledAge) ||
                other.xScaledAge == xScaledAge) &&
            (identical(other.yScaledEstimatedSalary, yScaledEstimatedSalary) ||
                other.yScaledEstimatedSalary == yScaledEstimatedSalary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, xScaledAge, yScaledEstimatedSalary);

  /// Create a copy of ScaledCoordinateCustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScaledCoordinateCustomerPredictionModelImplCopyWith<
    _$ScaledCoordinateCustomerPredictionModelImpl
  >
  get copyWith =>
      __$$ScaledCoordinateCustomerPredictionModelImplCopyWithImpl<
        _$ScaledCoordinateCustomerPredictionModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScaledCoordinateCustomerPredictionModelImplToJson(this);
  }
}

abstract class _ScaledCoordinateCustomerPredictionModel
    extends ScaledCoordinateCustomerPredictionModel {
  const factory _ScaledCoordinateCustomerPredictionModel({
    @JsonKey(name: 'x_scaled_age', defaultValue: 0)
    required final double xScaledAge,
    @JsonKey(name: 'y_scaled_estimated_salary', defaultValue: 0)
    required final double yScaledEstimatedSalary,
  }) = _$ScaledCoordinateCustomerPredictionModelImpl;
  const _ScaledCoordinateCustomerPredictionModel._() : super._();

  factory _ScaledCoordinateCustomerPredictionModel.fromJson(
    Map<String, dynamic> json,
  ) = _$ScaledCoordinateCustomerPredictionModelImpl.fromJson;

  @override
  @JsonKey(name: 'x_scaled_age', defaultValue: 0)
  double get xScaledAge;
  @override
  @JsonKey(name: 'y_scaled_estimated_salary', defaultValue: 0)
  double get yScaledEstimatedSalary;

  /// Create a copy of ScaledCoordinateCustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScaledCoordinateCustomerPredictionModelImplCopyWith<
    _$ScaledCoordinateCustomerPredictionModelImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
