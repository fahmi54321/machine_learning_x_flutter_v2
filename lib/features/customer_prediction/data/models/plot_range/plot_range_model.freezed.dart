// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plot_range_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PlotRangeModel _$PlotRangeModelFromJson(Map<String, dynamic> json) {
  return _PlotRangeModel.fromJson(json);
}

/// @nodoc
mixin _$PlotRangeModel {
  @JsonKey(name: 'x_max', defaultValue: 0)
  double get xMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'x_min', defaultValue: 0)
  double get xMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'y_max', defaultValue: 0)
  double get yMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'y_min', defaultValue: 0)
  double get yMin => throw _privateConstructorUsedError;

  /// Serializes this PlotRangeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlotRangeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlotRangeModelCopyWith<PlotRangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlotRangeModelCopyWith<$Res> {
  factory $PlotRangeModelCopyWith(
    PlotRangeModel value,
    $Res Function(PlotRangeModel) then,
  ) = _$PlotRangeModelCopyWithImpl<$Res, PlotRangeModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'x_max', defaultValue: 0) double xMax,
    @JsonKey(name: 'x_min', defaultValue: 0) double xMin,
    @JsonKey(name: 'y_max', defaultValue: 0) double yMax,
    @JsonKey(name: 'y_min', defaultValue: 0) double yMin,
  });
}

/// @nodoc
class _$PlotRangeModelCopyWithImpl<$Res, $Val extends PlotRangeModel>
    implements $PlotRangeModelCopyWith<$Res> {
  _$PlotRangeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlotRangeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xMax = null,
    Object? xMin = null,
    Object? yMax = null,
    Object? yMin = null,
  }) {
    return _then(
      _value.copyWith(
            xMax: null == xMax
                ? _value.xMax
                : xMax // ignore: cast_nullable_to_non_nullable
                      as double,
            xMin: null == xMin
                ? _value.xMin
                : xMin // ignore: cast_nullable_to_non_nullable
                      as double,
            yMax: null == yMax
                ? _value.yMax
                : yMax // ignore: cast_nullable_to_non_nullable
                      as double,
            yMin: null == yMin
                ? _value.yMin
                : yMin // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlotRangeModelImplCopyWith<$Res>
    implements $PlotRangeModelCopyWith<$Res> {
  factory _$$PlotRangeModelImplCopyWith(
    _$PlotRangeModelImpl value,
    $Res Function(_$PlotRangeModelImpl) then,
  ) = __$$PlotRangeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'x_max', defaultValue: 0) double xMax,
    @JsonKey(name: 'x_min', defaultValue: 0) double xMin,
    @JsonKey(name: 'y_max', defaultValue: 0) double yMax,
    @JsonKey(name: 'y_min', defaultValue: 0) double yMin,
  });
}

/// @nodoc
class __$$PlotRangeModelImplCopyWithImpl<$Res>
    extends _$PlotRangeModelCopyWithImpl<$Res, _$PlotRangeModelImpl>
    implements _$$PlotRangeModelImplCopyWith<$Res> {
  __$$PlotRangeModelImplCopyWithImpl(
    _$PlotRangeModelImpl _value,
    $Res Function(_$PlotRangeModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlotRangeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xMax = null,
    Object? xMin = null,
    Object? yMax = null,
    Object? yMin = null,
  }) {
    return _then(
      _$PlotRangeModelImpl(
        xMax: null == xMax
            ? _value.xMax
            : xMax // ignore: cast_nullable_to_non_nullable
                  as double,
        xMin: null == xMin
            ? _value.xMin
            : xMin // ignore: cast_nullable_to_non_nullable
                  as double,
        yMax: null == yMax
            ? _value.yMax
            : yMax // ignore: cast_nullable_to_non_nullable
                  as double,
        yMin: null == yMin
            ? _value.yMin
            : yMin // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlotRangeModelImpl extends _PlotRangeModel {
  const _$PlotRangeModelImpl({
    @JsonKey(name: 'x_max', defaultValue: 0) required this.xMax,
    @JsonKey(name: 'x_min', defaultValue: 0) required this.xMin,
    @JsonKey(name: 'y_max', defaultValue: 0) required this.yMax,
    @JsonKey(name: 'y_min', defaultValue: 0) required this.yMin,
  }) : super._();

  factory _$PlotRangeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlotRangeModelImplFromJson(json);

  @override
  @JsonKey(name: 'x_max', defaultValue: 0)
  final double xMax;
  @override
  @JsonKey(name: 'x_min', defaultValue: 0)
  final double xMin;
  @override
  @JsonKey(name: 'y_max', defaultValue: 0)
  final double yMax;
  @override
  @JsonKey(name: 'y_min', defaultValue: 0)
  final double yMin;

  @override
  String toString() {
    return 'PlotRangeModel(xMax: $xMax, xMin: $xMin, yMax: $yMax, yMin: $yMin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlotRangeModelImpl &&
            (identical(other.xMax, xMax) || other.xMax == xMax) &&
            (identical(other.xMin, xMin) || other.xMin == xMin) &&
            (identical(other.yMax, yMax) || other.yMax == yMax) &&
            (identical(other.yMin, yMin) || other.yMin == yMin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, xMax, xMin, yMax, yMin);

  /// Create a copy of PlotRangeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlotRangeModelImplCopyWith<_$PlotRangeModelImpl> get copyWith =>
      __$$PlotRangeModelImplCopyWithImpl<_$PlotRangeModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PlotRangeModelImplToJson(this);
  }
}

abstract class _PlotRangeModel extends PlotRangeModel {
  const factory _PlotRangeModel({
    @JsonKey(name: 'x_max', defaultValue: 0) required final double xMax,
    @JsonKey(name: 'x_min', defaultValue: 0) required final double xMin,
    @JsonKey(name: 'y_max', defaultValue: 0) required final double yMax,
    @JsonKey(name: 'y_min', defaultValue: 0) required final double yMin,
  }) = _$PlotRangeModelImpl;
  const _PlotRangeModel._() : super._();

  factory _PlotRangeModel.fromJson(Map<String, dynamic> json) =
      _$PlotRangeModelImpl.fromJson;

  @override
  @JsonKey(name: 'x_max', defaultValue: 0)
  double get xMax;
  @override
  @JsonKey(name: 'x_min', defaultValue: 0)
  double get xMin;
  @override
  @JsonKey(name: 'y_max', defaultValue: 0)
  double get yMax;
  @override
  @JsonKey(name: 'y_min', defaultValue: 0)
  double get yMin;

  /// Create a copy of PlotRangeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlotRangeModelImplCopyWith<_$PlotRangeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
