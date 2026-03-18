// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hr_salaries_point_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HrSalariesPointModel _$HrSalariesPointModelFromJson(Map<String, dynamic> json) {
  return _HrSalariesPointModel.fromJson(json);
}

/// @nodoc
mixin _$HrSalariesPointModel {
  @JsonKey(name: 'x', defaultValue: 0)
  double get x => throw _privateConstructorUsedError;
  @JsonKey(name: 'y', defaultValue: 0)
  double get y => throw _privateConstructorUsedError;

  /// Serializes this HrSalariesPointModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HrSalariesPointModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HrSalariesPointModelCopyWith<HrSalariesPointModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HrSalariesPointModelCopyWith<$Res> {
  factory $HrSalariesPointModelCopyWith(
    HrSalariesPointModel value,
    $Res Function(HrSalariesPointModel) then,
  ) = _$HrSalariesPointModelCopyWithImpl<$Res, HrSalariesPointModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'x', defaultValue: 0) double x,
    @JsonKey(name: 'y', defaultValue: 0) double y,
  });
}

/// @nodoc
class _$HrSalariesPointModelCopyWithImpl<
  $Res,
  $Val extends HrSalariesPointModel
>
    implements $HrSalariesPointModelCopyWith<$Res> {
  _$HrSalariesPointModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HrSalariesPointModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? x = null, Object? y = null}) {
    return _then(
      _value.copyWith(
            x: null == x
                ? _value.x
                : x // ignore: cast_nullable_to_non_nullable
                      as double,
            y: null == y
                ? _value.y
                : y // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HrSalariesPointModelImplCopyWith<$Res>
    implements $HrSalariesPointModelCopyWith<$Res> {
  factory _$$HrSalariesPointModelImplCopyWith(
    _$HrSalariesPointModelImpl value,
    $Res Function(_$HrSalariesPointModelImpl) then,
  ) = __$$HrSalariesPointModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'x', defaultValue: 0) double x,
    @JsonKey(name: 'y', defaultValue: 0) double y,
  });
}

/// @nodoc
class __$$HrSalariesPointModelImplCopyWithImpl<$Res>
    extends _$HrSalariesPointModelCopyWithImpl<$Res, _$HrSalariesPointModelImpl>
    implements _$$HrSalariesPointModelImplCopyWith<$Res> {
  __$$HrSalariesPointModelImplCopyWithImpl(
    _$HrSalariesPointModelImpl _value,
    $Res Function(_$HrSalariesPointModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HrSalariesPointModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? x = null, Object? y = null}) {
    return _then(
      _$HrSalariesPointModelImpl(
        x: null == x
            ? _value.x
            : x // ignore: cast_nullable_to_non_nullable
                  as double,
        y: null == y
            ? _value.y
            : y // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HrSalariesPointModelImpl extends _HrSalariesPointModel {
  const _$HrSalariesPointModelImpl({
    @JsonKey(name: 'x', defaultValue: 0) required this.x,
    @JsonKey(name: 'y', defaultValue: 0) required this.y,
  }) : super._();

  factory _$HrSalariesPointModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HrSalariesPointModelImplFromJson(json);

  @override
  @JsonKey(name: 'x', defaultValue: 0)
  final double x;
  @override
  @JsonKey(name: 'y', defaultValue: 0)
  final double y;

  @override
  String toString() {
    return 'HrSalariesPointModel(x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HrSalariesPointModelImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  /// Create a copy of HrSalariesPointModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HrSalariesPointModelImplCopyWith<_$HrSalariesPointModelImpl>
  get copyWith =>
      __$$HrSalariesPointModelImplCopyWithImpl<_$HrSalariesPointModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HrSalariesPointModelImplToJson(this);
  }
}

abstract class _HrSalariesPointModel extends HrSalariesPointModel {
  const factory _HrSalariesPointModel({
    @JsonKey(name: 'x', defaultValue: 0) required final double x,
    @JsonKey(name: 'y', defaultValue: 0) required final double y,
  }) = _$HrSalariesPointModelImpl;
  const _HrSalariesPointModel._() : super._();

  factory _HrSalariesPointModel.fromJson(Map<String, dynamic> json) =
      _$HrSalariesPointModelImpl.fromJson;

  @override
  @JsonKey(name: 'x', defaultValue: 0)
  double get x;
  @override
  @JsonKey(name: 'y', defaultValue: 0)
  double get y;

  /// Create a copy of HrSalariesPointModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HrSalariesPointModelImplCopyWith<_$HrSalariesPointModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
