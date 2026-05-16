// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'axis_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AxisModel _$AxisModelFromJson(Map<String, dynamic> json) {
  return _AxisModel.fromJson(json);
}

/// @nodoc
mixin _$AxisModel {
  @JsonKey(name: 'x_axis', defaultValue: '')
  String get xAxis => throw _privateConstructorUsedError;
  @JsonKey(name: 'y_axis', defaultValue: '')
  String get yAxis => throw _privateConstructorUsedError;

  /// Serializes this AxisModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AxisModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AxisModelCopyWith<AxisModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AxisModelCopyWith<$Res> {
  factory $AxisModelCopyWith(AxisModel value, $Res Function(AxisModel) then) =
      _$AxisModelCopyWithImpl<$Res, AxisModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'x_axis', defaultValue: '') String xAxis,
    @JsonKey(name: 'y_axis', defaultValue: '') String yAxis,
  });
}

/// @nodoc
class _$AxisModelCopyWithImpl<$Res, $Val extends AxisModel>
    implements $AxisModelCopyWith<$Res> {
  _$AxisModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AxisModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? xAxis = null, Object? yAxis = null}) {
    return _then(
      _value.copyWith(
            xAxis: null == xAxis
                ? _value.xAxis
                : xAxis // ignore: cast_nullable_to_non_nullable
                      as String,
            yAxis: null == yAxis
                ? _value.yAxis
                : yAxis // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AxisModelImplCopyWith<$Res>
    implements $AxisModelCopyWith<$Res> {
  factory _$$AxisModelImplCopyWith(
    _$AxisModelImpl value,
    $Res Function(_$AxisModelImpl) then,
  ) = __$$AxisModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'x_axis', defaultValue: '') String xAxis,
    @JsonKey(name: 'y_axis', defaultValue: '') String yAxis,
  });
}

/// @nodoc
class __$$AxisModelImplCopyWithImpl<$Res>
    extends _$AxisModelCopyWithImpl<$Res, _$AxisModelImpl>
    implements _$$AxisModelImplCopyWith<$Res> {
  __$$AxisModelImplCopyWithImpl(
    _$AxisModelImpl _value,
    $Res Function(_$AxisModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AxisModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? xAxis = null, Object? yAxis = null}) {
    return _then(
      _$AxisModelImpl(
        xAxis: null == xAxis
            ? _value.xAxis
            : xAxis // ignore: cast_nullable_to_non_nullable
                  as String,
        yAxis: null == yAxis
            ? _value.yAxis
            : yAxis // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AxisModelImpl extends _AxisModel {
  const _$AxisModelImpl({
    @JsonKey(name: 'x_axis', defaultValue: '') required this.xAxis,
    @JsonKey(name: 'y_axis', defaultValue: '') required this.yAxis,
  }) : super._();

  factory _$AxisModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AxisModelImplFromJson(json);

  @override
  @JsonKey(name: 'x_axis', defaultValue: '')
  final String xAxis;
  @override
  @JsonKey(name: 'y_axis', defaultValue: '')
  final String yAxis;

  @override
  String toString() {
    return 'AxisModel(xAxis: $xAxis, yAxis: $yAxis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AxisModelImpl &&
            (identical(other.xAxis, xAxis) || other.xAxis == xAxis) &&
            (identical(other.yAxis, yAxis) || other.yAxis == yAxis));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, xAxis, yAxis);

  /// Create a copy of AxisModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AxisModelImplCopyWith<_$AxisModelImpl> get copyWith =>
      __$$AxisModelImplCopyWithImpl<_$AxisModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AxisModelImplToJson(this);
  }
}

abstract class _AxisModel extends AxisModel {
  const factory _AxisModel({
    @JsonKey(name: 'x_axis', defaultValue: '') required final String xAxis,
    @JsonKey(name: 'y_axis', defaultValue: '') required final String yAxis,
  }) = _$AxisModelImpl;
  const _AxisModel._() : super._();

  factory _AxisModel.fromJson(Map<String, dynamic> json) =
      _$AxisModelImpl.fromJson;

  @override
  @JsonKey(name: 'x_axis', defaultValue: '')
  String get xAxis;
  @override
  @JsonKey(name: 'y_axis', defaultValue: '')
  String get yAxis;

  /// Create a copy of AxisModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AxisModelImplCopyWith<_$AxisModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
