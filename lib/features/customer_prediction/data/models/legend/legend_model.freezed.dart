// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'legend_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LegendModel _$LegendModelFromJson(Map<String, dynamic> json) {
  return _LegendModel.fromJson(json);
}

/// @nodoc
mixin _$LegendModel {
  @JsonKey(name: 'dodgerblue', defaultValue: '')
  String get dodgerblue => throw _privateConstructorUsedError;
  @JsonKey(name: 'salmon', defaultValue: '')
  String get salmon => throw _privateConstructorUsedError;

  /// Serializes this LegendModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LegendModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LegendModelCopyWith<LegendModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegendModelCopyWith<$Res> {
  factory $LegendModelCopyWith(
    LegendModel value,
    $Res Function(LegendModel) then,
  ) = _$LegendModelCopyWithImpl<$Res, LegendModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'dodgerblue', defaultValue: '') String dodgerblue,
    @JsonKey(name: 'salmon', defaultValue: '') String salmon,
  });
}

/// @nodoc
class _$LegendModelCopyWithImpl<$Res, $Val extends LegendModel>
    implements $LegendModelCopyWith<$Res> {
  _$LegendModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LegendModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? dodgerblue = null, Object? salmon = null}) {
    return _then(
      _value.copyWith(
            dodgerblue: null == dodgerblue
                ? _value.dodgerblue
                : dodgerblue // ignore: cast_nullable_to_non_nullable
                      as String,
            salmon: null == salmon
                ? _value.salmon
                : salmon // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LegendModelImplCopyWith<$Res>
    implements $LegendModelCopyWith<$Res> {
  factory _$$LegendModelImplCopyWith(
    _$LegendModelImpl value,
    $Res Function(_$LegendModelImpl) then,
  ) = __$$LegendModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'dodgerblue', defaultValue: '') String dodgerblue,
    @JsonKey(name: 'salmon', defaultValue: '') String salmon,
  });
}

/// @nodoc
class __$$LegendModelImplCopyWithImpl<$Res>
    extends _$LegendModelCopyWithImpl<$Res, _$LegendModelImpl>
    implements _$$LegendModelImplCopyWith<$Res> {
  __$$LegendModelImplCopyWithImpl(
    _$LegendModelImpl _value,
    $Res Function(_$LegendModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LegendModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? dodgerblue = null, Object? salmon = null}) {
    return _then(
      _$LegendModelImpl(
        dodgerblue: null == dodgerblue
            ? _value.dodgerblue
            : dodgerblue // ignore: cast_nullable_to_non_nullable
                  as String,
        salmon: null == salmon
            ? _value.salmon
            : salmon // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LegendModelImpl extends _LegendModel {
  const _$LegendModelImpl({
    @JsonKey(name: 'dodgerblue', defaultValue: '') required this.dodgerblue,
    @JsonKey(name: 'salmon', defaultValue: '') required this.salmon,
  }) : super._();

  factory _$LegendModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LegendModelImplFromJson(json);

  @override
  @JsonKey(name: 'dodgerblue', defaultValue: '')
  final String dodgerblue;
  @override
  @JsonKey(name: 'salmon', defaultValue: '')
  final String salmon;

  @override
  String toString() {
    return 'LegendModel(dodgerblue: $dodgerblue, salmon: $salmon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LegendModelImpl &&
            (identical(other.dodgerblue, dodgerblue) ||
                other.dodgerblue == dodgerblue) &&
            (identical(other.salmon, salmon) || other.salmon == salmon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dodgerblue, salmon);

  /// Create a copy of LegendModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LegendModelImplCopyWith<_$LegendModelImpl> get copyWith =>
      __$$LegendModelImplCopyWithImpl<_$LegendModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LegendModelImplToJson(this);
  }
}

abstract class _LegendModel extends LegendModel {
  const factory _LegendModel({
    @JsonKey(name: 'dodgerblue', defaultValue: '')
    required final String dodgerblue,
    @JsonKey(name: 'salmon', defaultValue: '') required final String salmon,
  }) = _$LegendModelImpl;
  const _LegendModel._() : super._();

  factory _LegendModel.fromJson(Map<String, dynamic> json) =
      _$LegendModelImpl.fromJson;

  @override
  @JsonKey(name: 'dodgerblue', defaultValue: '')
  String get dodgerblue;
  @override
  @JsonKey(name: 'salmon', defaultValue: '')
  String get salmon;

  /// Create a copy of LegendModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LegendModelImplCopyWith<_$LegendModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
