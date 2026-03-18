// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hr_salaries_prediction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HrSalariesPredictionModel _$HrSalariesPredictionModelFromJson(
  Map<String, dynamic> json,
) {
  return _HrSalariesPredictionModel.fromJson(json);
}

/// @nodoc
mixin _$HrSalariesPredictionModel {
  @JsonKey(name: 'currency', defaultValue: '')
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'formatted', defaultValue: '')
  String get formatted => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary', defaultValue: 0)
  double get salary => throw _privateConstructorUsedError;

  /// Serializes this HrSalariesPredictionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HrSalariesPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HrSalariesPredictionModelCopyWith<HrSalariesPredictionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HrSalariesPredictionModelCopyWith<$Res> {
  factory $HrSalariesPredictionModelCopyWith(
    HrSalariesPredictionModel value,
    $Res Function(HrSalariesPredictionModel) then,
  ) = _$HrSalariesPredictionModelCopyWithImpl<$Res, HrSalariesPredictionModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'currency', defaultValue: '') String currency,
    @JsonKey(name: 'formatted', defaultValue: '') String formatted,
    @JsonKey(name: 'salary', defaultValue: 0) double salary,
  });
}

/// @nodoc
class _$HrSalariesPredictionModelCopyWithImpl<
  $Res,
  $Val extends HrSalariesPredictionModel
>
    implements $HrSalariesPredictionModelCopyWith<$Res> {
  _$HrSalariesPredictionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HrSalariesPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? formatted = null,
    Object? salary = null,
  }) {
    return _then(
      _value.copyWith(
            currency: null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String,
            formatted: null == formatted
                ? _value.formatted
                : formatted // ignore: cast_nullable_to_non_nullable
                      as String,
            salary: null == salary
                ? _value.salary
                : salary // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HrSalariesPredictionModelImplCopyWith<$Res>
    implements $HrSalariesPredictionModelCopyWith<$Res> {
  factory _$$HrSalariesPredictionModelImplCopyWith(
    _$HrSalariesPredictionModelImpl value,
    $Res Function(_$HrSalariesPredictionModelImpl) then,
  ) = __$$HrSalariesPredictionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'currency', defaultValue: '') String currency,
    @JsonKey(name: 'formatted', defaultValue: '') String formatted,
    @JsonKey(name: 'salary', defaultValue: 0) double salary,
  });
}

/// @nodoc
class __$$HrSalariesPredictionModelImplCopyWithImpl<$Res>
    extends
        _$HrSalariesPredictionModelCopyWithImpl<
          $Res,
          _$HrSalariesPredictionModelImpl
        >
    implements _$$HrSalariesPredictionModelImplCopyWith<$Res> {
  __$$HrSalariesPredictionModelImplCopyWithImpl(
    _$HrSalariesPredictionModelImpl _value,
    $Res Function(_$HrSalariesPredictionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HrSalariesPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? formatted = null,
    Object? salary = null,
  }) {
    return _then(
      _$HrSalariesPredictionModelImpl(
        currency: null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
        formatted: null == formatted
            ? _value.formatted
            : formatted // ignore: cast_nullable_to_non_nullable
                  as String,
        salary: null == salary
            ? _value.salary
            : salary // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HrSalariesPredictionModelImpl extends _HrSalariesPredictionModel {
  const _$HrSalariesPredictionModelImpl({
    @JsonKey(name: 'currency', defaultValue: '') required this.currency,
    @JsonKey(name: 'formatted', defaultValue: '') required this.formatted,
    @JsonKey(name: 'salary', defaultValue: 0) required this.salary,
  }) : super._();

  factory _$HrSalariesPredictionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HrSalariesPredictionModelImplFromJson(json);

  @override
  @JsonKey(name: 'currency', defaultValue: '')
  final String currency;
  @override
  @JsonKey(name: 'formatted', defaultValue: '')
  final String formatted;
  @override
  @JsonKey(name: 'salary', defaultValue: 0)
  final double salary;

  @override
  String toString() {
    return 'HrSalariesPredictionModel(currency: $currency, formatted: $formatted, salary: $salary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HrSalariesPredictionModelImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted) &&
            (identical(other.salary, salary) || other.salary == salary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currency, formatted, salary);

  /// Create a copy of HrSalariesPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HrSalariesPredictionModelImplCopyWith<_$HrSalariesPredictionModelImpl>
  get copyWith =>
      __$$HrSalariesPredictionModelImplCopyWithImpl<
        _$HrSalariesPredictionModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HrSalariesPredictionModelImplToJson(this);
  }
}

abstract class _HrSalariesPredictionModel extends HrSalariesPredictionModel {
  const factory _HrSalariesPredictionModel({
    @JsonKey(name: 'currency', defaultValue: '') required final String currency,
    @JsonKey(name: 'formatted', defaultValue: '')
    required final String formatted,
    @JsonKey(name: 'salary', defaultValue: 0) required final double salary,
  }) = _$HrSalariesPredictionModelImpl;
  const _HrSalariesPredictionModel._() : super._();

  factory _HrSalariesPredictionModel.fromJson(Map<String, dynamic> json) =
      _$HrSalariesPredictionModelImpl.fromJson;

  @override
  @JsonKey(name: 'currency', defaultValue: '')
  String get currency;
  @override
  @JsonKey(name: 'formatted', defaultValue: '')
  String get formatted;
  @override
  @JsonKey(name: 'salary', defaultValue: 0)
  double get salary;

  /// Create a copy of HrSalariesPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HrSalariesPredictionModelImplCopyWith<_$HrSalariesPredictionModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
