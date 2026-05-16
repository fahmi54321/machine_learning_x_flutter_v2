// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_customer_prediction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

InputCustomerPredictionModel _$InputCustomerPredictionModelFromJson(
  Map<String, dynamic> json,
) {
  return _InputCustomerPredictionModel.fromJson(json);
}

/// @nodoc
mixin _$InputCustomerPredictionModel {
  @JsonKey(name: 'age', defaultValue: 0)
  double get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_salary', defaultValue: 0)
  double get estimatedSalary => throw _privateConstructorUsedError;

  /// Serializes this InputCustomerPredictionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InputCustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputCustomerPredictionModelCopyWith<InputCustomerPredictionModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputCustomerPredictionModelCopyWith<$Res> {
  factory $InputCustomerPredictionModelCopyWith(
    InputCustomerPredictionModel value,
    $Res Function(InputCustomerPredictionModel) then,
  ) =
      _$InputCustomerPredictionModelCopyWithImpl<
        $Res,
        InputCustomerPredictionModel
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'age', defaultValue: 0) double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0) double estimatedSalary,
  });
}

/// @nodoc
class _$InputCustomerPredictionModelCopyWithImpl<
  $Res,
  $Val extends InputCustomerPredictionModel
>
    implements $InputCustomerPredictionModelCopyWith<$Res> {
  _$InputCustomerPredictionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputCustomerPredictionModel
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
abstract class _$$InputCustomerPredictionModelImplCopyWith<$Res>
    implements $InputCustomerPredictionModelCopyWith<$Res> {
  factory _$$InputCustomerPredictionModelImplCopyWith(
    _$InputCustomerPredictionModelImpl value,
    $Res Function(_$InputCustomerPredictionModelImpl) then,
  ) = __$$InputCustomerPredictionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'age', defaultValue: 0) double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0) double estimatedSalary,
  });
}

/// @nodoc
class __$$InputCustomerPredictionModelImplCopyWithImpl<$Res>
    extends
        _$InputCustomerPredictionModelCopyWithImpl<
          $Res,
          _$InputCustomerPredictionModelImpl
        >
    implements _$$InputCustomerPredictionModelImplCopyWith<$Res> {
  __$$InputCustomerPredictionModelImplCopyWithImpl(
    _$InputCustomerPredictionModelImpl _value,
    $Res Function(_$InputCustomerPredictionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InputCustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? age = null, Object? estimatedSalary = null}) {
    return _then(
      _$InputCustomerPredictionModelImpl(
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
class _$InputCustomerPredictionModelImpl extends _InputCustomerPredictionModel {
  const _$InputCustomerPredictionModelImpl({
    @JsonKey(name: 'age', defaultValue: 0) required this.age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required this.estimatedSalary,
  }) : super._();

  factory _$InputCustomerPredictionModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$InputCustomerPredictionModelImplFromJson(json);

  @override
  @JsonKey(name: 'age', defaultValue: 0)
  final double age;
  @override
  @JsonKey(name: 'estimated_salary', defaultValue: 0)
  final double estimatedSalary;

  @override
  String toString() {
    return 'InputCustomerPredictionModel(age: $age, estimatedSalary: $estimatedSalary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputCustomerPredictionModelImpl &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.estimatedSalary, estimatedSalary) ||
                other.estimatedSalary == estimatedSalary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, age, estimatedSalary);

  /// Create a copy of InputCustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputCustomerPredictionModelImplCopyWith<
    _$InputCustomerPredictionModelImpl
  >
  get copyWith =>
      __$$InputCustomerPredictionModelImplCopyWithImpl<
        _$InputCustomerPredictionModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputCustomerPredictionModelImplToJson(this);
  }
}

abstract class _InputCustomerPredictionModel
    extends InputCustomerPredictionModel {
  const factory _InputCustomerPredictionModel({
    @JsonKey(name: 'age', defaultValue: 0) required final double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required final double estimatedSalary,
  }) = _$InputCustomerPredictionModelImpl;
  const _InputCustomerPredictionModel._() : super._();

  factory _InputCustomerPredictionModel.fromJson(Map<String, dynamic> json) =
      _$InputCustomerPredictionModelImpl.fromJson;

  @override
  @JsonKey(name: 'age', defaultValue: 0)
  double get age;
  @override
  @JsonKey(name: 'estimated_salary', defaultValue: 0)
  double get estimatedSalary;

  /// Create a copy of InputCustomerPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputCustomerPredictionModelImplCopyWith<
    _$InputCustomerPredictionModelImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
