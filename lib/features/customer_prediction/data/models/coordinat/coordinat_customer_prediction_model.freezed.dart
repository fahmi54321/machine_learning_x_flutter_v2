// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coordinat_customer_prediction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CoordinateCustomerPredictionModel _$CoordinateCustomerPredictionModelFromJson(
  Map<String, dynamic> json,
) {
  return _CoordinateCustomerPredictionModel.fromJson(json);
}

/// @nodoc
mixin _$CoordinateCustomerPredictionModel {
  @JsonKey(name: 'x_age', defaultValue: 0)
  double get xAge => throw _privateConstructorUsedError;
  @JsonKey(name: 'y_estimated_salary', defaultValue: 0)
  double get yEstimatedSalary => throw _privateConstructorUsedError;

  /// Serializes this CoordinateCustomerPredictionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoordinateCustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoordinateCustomerPredictionModelCopyWith<CoordinateCustomerPredictionModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinateCustomerPredictionModelCopyWith<$Res> {
  factory $CoordinateCustomerPredictionModelCopyWith(
    CoordinateCustomerPredictionModel value,
    $Res Function(CoordinateCustomerPredictionModel) then,
  ) =
      _$CoordinateCustomerPredictionModelCopyWithImpl<
        $Res,
        CoordinateCustomerPredictionModel
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'x_age', defaultValue: 0) double xAge,
    @JsonKey(name: 'y_estimated_salary', defaultValue: 0)
    double yEstimatedSalary,
  });
}

/// @nodoc
class _$CoordinateCustomerPredictionModelCopyWithImpl<
  $Res,
  $Val extends CoordinateCustomerPredictionModel
>
    implements $CoordinateCustomerPredictionModelCopyWith<$Res> {
  _$CoordinateCustomerPredictionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoordinateCustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? xAge = null, Object? yEstimatedSalary = null}) {
    return _then(
      _value.copyWith(
            xAge: null == xAge
                ? _value.xAge
                : xAge // ignore: cast_nullable_to_non_nullable
                      as double,
            yEstimatedSalary: null == yEstimatedSalary
                ? _value.yEstimatedSalary
                : yEstimatedSalary // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CoordinateCustomerPredictionModelImplCopyWith<$Res>
    implements $CoordinateCustomerPredictionModelCopyWith<$Res> {
  factory _$$CoordinateCustomerPredictionModelImplCopyWith(
    _$CoordinateCustomerPredictionModelImpl value,
    $Res Function(_$CoordinateCustomerPredictionModelImpl) then,
  ) = __$$CoordinateCustomerPredictionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'x_age', defaultValue: 0) double xAge,
    @JsonKey(name: 'y_estimated_salary', defaultValue: 0)
    double yEstimatedSalary,
  });
}

/// @nodoc
class __$$CoordinateCustomerPredictionModelImplCopyWithImpl<$Res>
    extends
        _$CoordinateCustomerPredictionModelCopyWithImpl<
          $Res,
          _$CoordinateCustomerPredictionModelImpl
        >
    implements _$$CoordinateCustomerPredictionModelImplCopyWith<$Res> {
  __$$CoordinateCustomerPredictionModelImplCopyWithImpl(
    _$CoordinateCustomerPredictionModelImpl _value,
    $Res Function(_$CoordinateCustomerPredictionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CoordinateCustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? xAge = null, Object? yEstimatedSalary = null}) {
    return _then(
      _$CoordinateCustomerPredictionModelImpl(
        xAge: null == xAge
            ? _value.xAge
            : xAge // ignore: cast_nullable_to_non_nullable
                  as double,
        yEstimatedSalary: null == yEstimatedSalary
            ? _value.yEstimatedSalary
            : yEstimatedSalary // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CoordinateCustomerPredictionModelImpl
    extends _CoordinateCustomerPredictionModel {
  const _$CoordinateCustomerPredictionModelImpl({
    @JsonKey(name: 'x_age', defaultValue: 0) required this.xAge,
    @JsonKey(name: 'y_estimated_salary', defaultValue: 0)
    required this.yEstimatedSalary,
  }) : super._();

  factory _$CoordinateCustomerPredictionModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$CoordinateCustomerPredictionModelImplFromJson(json);

  @override
  @JsonKey(name: 'x_age', defaultValue: 0)
  final double xAge;
  @override
  @JsonKey(name: 'y_estimated_salary', defaultValue: 0)
  final double yEstimatedSalary;

  @override
  String toString() {
    return 'CoordinateCustomerPredictionModel(xAge: $xAge, yEstimatedSalary: $yEstimatedSalary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinateCustomerPredictionModelImpl &&
            (identical(other.xAge, xAge) || other.xAge == xAge) &&
            (identical(other.yEstimatedSalary, yEstimatedSalary) ||
                other.yEstimatedSalary == yEstimatedSalary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, xAge, yEstimatedSalary);

  /// Create a copy of CoordinateCustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordinateCustomerPredictionModelImplCopyWith<
    _$CoordinateCustomerPredictionModelImpl
  >
  get copyWith =>
      __$$CoordinateCustomerPredictionModelImplCopyWithImpl<
        _$CoordinateCustomerPredictionModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoordinateCustomerPredictionModelImplToJson(this);
  }
}

abstract class _CoordinateCustomerPredictionModel
    extends CoordinateCustomerPredictionModel {
  const factory _CoordinateCustomerPredictionModel({
    @JsonKey(name: 'x_age', defaultValue: 0) required final double xAge,
    @JsonKey(name: 'y_estimated_salary', defaultValue: 0)
    required final double yEstimatedSalary,
  }) = _$CoordinateCustomerPredictionModelImpl;
  const _CoordinateCustomerPredictionModel._() : super._();

  factory _CoordinateCustomerPredictionModel.fromJson(
    Map<String, dynamic> json,
  ) = _$CoordinateCustomerPredictionModelImpl.fromJson;

  @override
  @JsonKey(name: 'x_age', defaultValue: 0)
  double get xAge;
  @override
  @JsonKey(name: 'y_estimated_salary', defaultValue: 0)
  double get yEstimatedSalary;

  /// Create a copy of CoordinateCustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoordinateCustomerPredictionModelImplCopyWith<
    _$CoordinateCustomerPredictionModelImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
