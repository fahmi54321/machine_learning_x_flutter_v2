// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prediction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProbabilityModel _$ProbabilityModelFromJson(Map<String, dynamic> json) {
  return _ProbabilityModel.fromJson(json);
}

/// @nodoc
mixin _$ProbabilityModel {
  @JsonKey(name: 'buy_suv', defaultValue: 0)
  double get buySuv => throw _privateConstructorUsedError;
  @JsonKey(name: 'not_buy_suv', defaultValue: 0)
  double get notBuySuv => throw _privateConstructorUsedError;

  /// Serializes this ProbabilityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProbabilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProbabilityModelCopyWith<ProbabilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProbabilityModelCopyWith<$Res> {
  factory $ProbabilityModelCopyWith(
    ProbabilityModel value,
    $Res Function(ProbabilityModel) then,
  ) = _$ProbabilityModelCopyWithImpl<$Res, ProbabilityModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'buy_suv', defaultValue: 0) double buySuv,
    @JsonKey(name: 'not_buy_suv', defaultValue: 0) double notBuySuv,
  });
}

/// @nodoc
class _$ProbabilityModelCopyWithImpl<$Res, $Val extends ProbabilityModel>
    implements $ProbabilityModelCopyWith<$Res> {
  _$ProbabilityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProbabilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? buySuv = null, Object? notBuySuv = null}) {
    return _then(
      _value.copyWith(
            buySuv: null == buySuv
                ? _value.buySuv
                : buySuv // ignore: cast_nullable_to_non_nullable
                      as double,
            notBuySuv: null == notBuySuv
                ? _value.notBuySuv
                : notBuySuv // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProbabilityModelImplCopyWith<$Res>
    implements $ProbabilityModelCopyWith<$Res> {
  factory _$$ProbabilityModelImplCopyWith(
    _$ProbabilityModelImpl value,
    $Res Function(_$ProbabilityModelImpl) then,
  ) = __$$ProbabilityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'buy_suv', defaultValue: 0) double buySuv,
    @JsonKey(name: 'not_buy_suv', defaultValue: 0) double notBuySuv,
  });
}

/// @nodoc
class __$$ProbabilityModelImplCopyWithImpl<$Res>
    extends _$ProbabilityModelCopyWithImpl<$Res, _$ProbabilityModelImpl>
    implements _$$ProbabilityModelImplCopyWith<$Res> {
  __$$ProbabilityModelImplCopyWithImpl(
    _$ProbabilityModelImpl _value,
    $Res Function(_$ProbabilityModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProbabilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? buySuv = null, Object? notBuySuv = null}) {
    return _then(
      _$ProbabilityModelImpl(
        buySuv: null == buySuv
            ? _value.buySuv
            : buySuv // ignore: cast_nullable_to_non_nullable
                  as double,
        notBuySuv: null == notBuySuv
            ? _value.notBuySuv
            : notBuySuv // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProbabilityModelImpl extends _ProbabilityModel {
  const _$ProbabilityModelImpl({
    @JsonKey(name: 'buy_suv', defaultValue: 0) required this.buySuv,
    @JsonKey(name: 'not_buy_suv', defaultValue: 0) required this.notBuySuv,
  }) : super._();

  factory _$ProbabilityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProbabilityModelImplFromJson(json);

  @override
  @JsonKey(name: 'buy_suv', defaultValue: 0)
  final double buySuv;
  @override
  @JsonKey(name: 'not_buy_suv', defaultValue: 0)
  final double notBuySuv;

  @override
  String toString() {
    return 'ProbabilityModel(buySuv: $buySuv, notBuySuv: $notBuySuv)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProbabilityModelImpl &&
            (identical(other.buySuv, buySuv) || other.buySuv == buySuv) &&
            (identical(other.notBuySuv, notBuySuv) ||
                other.notBuySuv == notBuySuv));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, buySuv, notBuySuv);

  /// Create a copy of ProbabilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProbabilityModelImplCopyWith<_$ProbabilityModelImpl> get copyWith =>
      __$$ProbabilityModelImplCopyWithImpl<_$ProbabilityModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProbabilityModelImplToJson(this);
  }
}

abstract class _ProbabilityModel extends ProbabilityModel {
  const factory _ProbabilityModel({
    @JsonKey(name: 'buy_suv', defaultValue: 0) required final double buySuv,
    @JsonKey(name: 'not_buy_suv', defaultValue: 0)
    required final double notBuySuv,
  }) = _$ProbabilityModelImpl;
  const _ProbabilityModel._() : super._();

  factory _ProbabilityModel.fromJson(Map<String, dynamic> json) =
      _$ProbabilityModelImpl.fromJson;

  @override
  @JsonKey(name: 'buy_suv', defaultValue: 0)
  double get buySuv;
  @override
  @JsonKey(name: 'not_buy_suv', defaultValue: 0)
  double get notBuySuv;

  /// Create a copy of ProbabilityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProbabilityModelImplCopyWith<_$ProbabilityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
