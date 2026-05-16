// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visualization_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

visualizationInfoModel _$visualizationInfoModelFromJson(
  Map<String, dynamic> json,
) {
  return _visualizationInfoModel.fromJson(json);
}

/// @nodoc
mixin _$visualizationInfoModel {
  @JsonKey(name: 'prediction_region', defaultValue: '')
  String get predictionRegion => throw _privateConstructorUsedError;
  @JsonKey(name: 'x_axis', defaultValue: '')
  String get xAxis => throw _privateConstructorUsedError;
  @JsonKey(name: 'y_axis', defaultValue: '')
  String get yAxis => throw _privateConstructorUsedError;

  /// Serializes this visualizationInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of visualizationInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $visualizationInfoModelCopyWith<visualizationInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $visualizationInfoModelCopyWith<$Res> {
  factory $visualizationInfoModelCopyWith(
    visualizationInfoModel value,
    $Res Function(visualizationInfoModel) then,
  ) = _$visualizationInfoModelCopyWithImpl<$Res, visualizationInfoModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'prediction_region', defaultValue: '')
    String predictionRegion,
    @JsonKey(name: 'x_axis', defaultValue: '') String xAxis,
    @JsonKey(name: 'y_axis', defaultValue: '') String yAxis,
  });
}

/// @nodoc
class _$visualizationInfoModelCopyWithImpl<
  $Res,
  $Val extends visualizationInfoModel
>
    implements $visualizationInfoModelCopyWith<$Res> {
  _$visualizationInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of visualizationInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictionRegion = null,
    Object? xAxis = null,
    Object? yAxis = null,
  }) {
    return _then(
      _value.copyWith(
            predictionRegion: null == predictionRegion
                ? _value.predictionRegion
                : predictionRegion // ignore: cast_nullable_to_non_nullable
                      as String,
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
abstract class _$$visualizationInfoModelImplCopyWith<$Res>
    implements $visualizationInfoModelCopyWith<$Res> {
  factory _$$visualizationInfoModelImplCopyWith(
    _$visualizationInfoModelImpl value,
    $Res Function(_$visualizationInfoModelImpl) then,
  ) = __$$visualizationInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'prediction_region', defaultValue: '')
    String predictionRegion,
    @JsonKey(name: 'x_axis', defaultValue: '') String xAxis,
    @JsonKey(name: 'y_axis', defaultValue: '') String yAxis,
  });
}

/// @nodoc
class __$$visualizationInfoModelImplCopyWithImpl<$Res>
    extends
        _$visualizationInfoModelCopyWithImpl<$Res, _$visualizationInfoModelImpl>
    implements _$$visualizationInfoModelImplCopyWith<$Res> {
  __$$visualizationInfoModelImplCopyWithImpl(
    _$visualizationInfoModelImpl _value,
    $Res Function(_$visualizationInfoModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of visualizationInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictionRegion = null,
    Object? xAxis = null,
    Object? yAxis = null,
  }) {
    return _then(
      _$visualizationInfoModelImpl(
        predictionRegion: null == predictionRegion
            ? _value.predictionRegion
            : predictionRegion // ignore: cast_nullable_to_non_nullable
                  as String,
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
class _$visualizationInfoModelImpl extends _visualizationInfoModel {
  const _$visualizationInfoModelImpl({
    @JsonKey(name: 'prediction_region', defaultValue: '')
    required this.predictionRegion,
    @JsonKey(name: 'x_axis', defaultValue: '') required this.xAxis,
    @JsonKey(name: 'y_axis', defaultValue: '') required this.yAxis,
  }) : super._();

  factory _$visualizationInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$visualizationInfoModelImplFromJson(json);

  @override
  @JsonKey(name: 'prediction_region', defaultValue: '')
  final String predictionRegion;
  @override
  @JsonKey(name: 'x_axis', defaultValue: '')
  final String xAxis;
  @override
  @JsonKey(name: 'y_axis', defaultValue: '')
  final String yAxis;

  @override
  String toString() {
    return 'visualizationInfoModel(predictionRegion: $predictionRegion, xAxis: $xAxis, yAxis: $yAxis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$visualizationInfoModelImpl &&
            (identical(other.predictionRegion, predictionRegion) ||
                other.predictionRegion == predictionRegion) &&
            (identical(other.xAxis, xAxis) || other.xAxis == xAxis) &&
            (identical(other.yAxis, yAxis) || other.yAxis == yAxis));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, predictionRegion, xAxis, yAxis);

  /// Create a copy of visualizationInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$visualizationInfoModelImplCopyWith<_$visualizationInfoModelImpl>
  get copyWith =>
      __$$visualizationInfoModelImplCopyWithImpl<_$visualizationInfoModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$visualizationInfoModelImplToJson(this);
  }
}

abstract class _visualizationInfoModel extends visualizationInfoModel {
  const factory _visualizationInfoModel({
    @JsonKey(name: 'prediction_region', defaultValue: '')
    required final String predictionRegion,
    @JsonKey(name: 'x_axis', defaultValue: '') required final String xAxis,
    @JsonKey(name: 'y_axis', defaultValue: '') required final String yAxis,
  }) = _$visualizationInfoModelImpl;
  const _visualizationInfoModel._() : super._();

  factory _visualizationInfoModel.fromJson(Map<String, dynamic> json) =
      _$visualizationInfoModelImpl.fromJson;

  @override
  @JsonKey(name: 'prediction_region', defaultValue: '')
  String get predictionRegion;
  @override
  @JsonKey(name: 'x_axis', defaultValue: '')
  String get xAxis;
  @override
  @JsonKey(name: 'y_axis', defaultValue: '')
  String get yAxis;

  /// Create a copy of visualizationInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$visualizationInfoModelImplCopyWith<_$visualizationInfoModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
