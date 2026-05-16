// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_prediction_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CustomerPredictionParamsModel _$CustomerPredictionParamsModelFromJson(
  Map<String, dynamic> json,
) {
  return _CustomerPredictionParamsModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerPredictionParamsModel {
  @JsonKey(name: 'age', defaultValue: 0)
  double get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_salary', defaultValue: 0)
  double get estimatedSalary => throw _privateConstructorUsedError;

  /// Serializes this CustomerPredictionParamsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerPredictionParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerPredictionParamsModelCopyWith<CustomerPredictionParamsModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerPredictionParamsModelCopyWith<$Res> {
  factory $CustomerPredictionParamsModelCopyWith(
    CustomerPredictionParamsModel value,
    $Res Function(CustomerPredictionParamsModel) then,
  ) =
      _$CustomerPredictionParamsModelCopyWithImpl<
        $Res,
        CustomerPredictionParamsModel
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'age', defaultValue: 0) double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0) double estimatedSalary,
  });
}

/// @nodoc
class _$CustomerPredictionParamsModelCopyWithImpl<
  $Res,
  $Val extends CustomerPredictionParamsModel
>
    implements $CustomerPredictionParamsModelCopyWith<$Res> {
  _$CustomerPredictionParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerPredictionParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? age = null, Object? estimatedSalary = null}) {
    return _then(
      _value.copyWith(
            age: null == age
                ? _value.age
                : age // ignore: cast_nullable_to_non_nullable
                      as double,
            estimatedSalary: null == estimatedSalary
                ? _value.estimatedSalary
                : estimatedSalary // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CustomerPredictionParamsModelImplCopyWith<$Res>
    implements $CustomerPredictionParamsModelCopyWith<$Res> {
  factory _$$CustomerPredictionParamsModelImplCopyWith(
    _$CustomerPredictionParamsModelImpl value,
    $Res Function(_$CustomerPredictionParamsModelImpl) then,
  ) = __$$CustomerPredictionParamsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'age', defaultValue: 0) double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0) double estimatedSalary,
  });
}

/// @nodoc
class __$$CustomerPredictionParamsModelImplCopyWithImpl<$Res>
    extends
        _$CustomerPredictionParamsModelCopyWithImpl<
          $Res,
          _$CustomerPredictionParamsModelImpl
        >
    implements _$$CustomerPredictionParamsModelImplCopyWith<$Res> {
  __$$CustomerPredictionParamsModelImplCopyWithImpl(
    _$CustomerPredictionParamsModelImpl _value,
    $Res Function(_$CustomerPredictionParamsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerPredictionParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? age = null, Object? estimatedSalary = null}) {
    return _then(
      _$CustomerPredictionParamsModelImpl(
        age: null == age
            ? _value.age
            : age // ignore: cast_nullable_to_non_nullable
                  as double,
        estimatedSalary: null == estimatedSalary
            ? _value.estimatedSalary
            : estimatedSalary // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerPredictionParamsModelImpl
    extends _CustomerPredictionParamsModel {
  const _$CustomerPredictionParamsModelImpl({
    @JsonKey(name: 'age', defaultValue: 0) required this.age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required this.estimatedSalary,
  }) : super._();

  factory _$CustomerPredictionParamsModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$CustomerPredictionParamsModelImplFromJson(json);

  @override
  @JsonKey(name: 'age', defaultValue: 0)
  final double age;
  @override
  @JsonKey(name: 'estimated_salary', defaultValue: 0)
  final double estimatedSalary;

  @override
  String toString() {
    return 'CustomerPredictionParamsModel(age: $age, estimatedSalary: $estimatedSalary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerPredictionParamsModelImpl &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.estimatedSalary, estimatedSalary) ||
                other.estimatedSalary == estimatedSalary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, estimatedSalary);

  /// Create a copy of CustomerPredictionParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerPredictionParamsModelImplCopyWith<
    _$CustomerPredictionParamsModelImpl
  >
  get copyWith =>
      __$$CustomerPredictionParamsModelImplCopyWithImpl<
        _$CustomerPredictionParamsModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerPredictionParamsModelImplToJson(this);
  }
}

abstract class _CustomerPredictionParamsModel
    extends CustomerPredictionParamsModel {
  const factory _CustomerPredictionParamsModel({
    @JsonKey(name: 'age', defaultValue: 0) required final double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required final double estimatedSalary,
  }) = _$CustomerPredictionParamsModelImpl;
  const _CustomerPredictionParamsModel._() : super._();

  factory _CustomerPredictionParamsModel.fromJson(Map<String, dynamic> json) =
      _$CustomerPredictionParamsModelImpl.fromJson;

  @override
  @JsonKey(name: 'age', defaultValue: 0)
  double get age;
  @override
  @JsonKey(name: 'estimated_salary', defaultValue: 0)
  double get estimatedSalary;

  /// Create a copy of CustomerPredictionParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerPredictionParamsModelImplCopyWith<
    _$CustomerPredictionParamsModelImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
