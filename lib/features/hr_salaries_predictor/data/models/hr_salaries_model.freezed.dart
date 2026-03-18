// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hr_salaries_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HrSalariesModel _$HrSalariesModelFromJson(Map<String, dynamic> json) {
  return _HrSalariesModel.fromJson(json);
}

/// @nodoc
mixin _$HrSalariesModel {
  @JsonKey(name: 'insight')
  HrSalariesInsightModel? get insight => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  HrSalariesMetaModel? get meta => throw _privateConstructorUsedError;
  @JsonKey(name: 'prediction')
  HrSalariesPredictionModel? get prediction =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'visualization')
  HrSalariesVisualizationModel? get visualization =>
      throw _privateConstructorUsedError;

  /// Serializes this HrSalariesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HrSalariesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HrSalariesModelCopyWith<HrSalariesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HrSalariesModelCopyWith<$Res> {
  factory $HrSalariesModelCopyWith(
    HrSalariesModel value,
    $Res Function(HrSalariesModel) then,
  ) = _$HrSalariesModelCopyWithImpl<$Res, HrSalariesModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'insight') HrSalariesInsightModel? insight,
    @JsonKey(name: 'meta') HrSalariesMetaModel? meta,
    @JsonKey(name: 'prediction') HrSalariesPredictionModel? prediction,
    @JsonKey(name: 'visualization') HrSalariesVisualizationModel? visualization,
  });

  $HrSalariesInsightModelCopyWith<$Res>? get insight;
  $HrSalariesMetaModelCopyWith<$Res>? get meta;
  $HrSalariesPredictionModelCopyWith<$Res>? get prediction;
  $HrSalariesVisualizationModelCopyWith<$Res>? get visualization;
}

/// @nodoc
class _$HrSalariesModelCopyWithImpl<$Res, $Val extends HrSalariesModel>
    implements $HrSalariesModelCopyWith<$Res> {
  _$HrSalariesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HrSalariesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insight = freezed,
    Object? meta = freezed,
    Object? prediction = freezed,
    Object? visualization = freezed,
  }) {
    return _then(
      _value.copyWith(
            insight: freezed == insight
                ? _value.insight
                : insight // ignore: cast_nullable_to_non_nullable
                      as HrSalariesInsightModel?,
            meta: freezed == meta
                ? _value.meta
                : meta // ignore: cast_nullable_to_non_nullable
                      as HrSalariesMetaModel?,
            prediction: freezed == prediction
                ? _value.prediction
                : prediction // ignore: cast_nullable_to_non_nullable
                      as HrSalariesPredictionModel?,
            visualization: freezed == visualization
                ? _value.visualization
                : visualization // ignore: cast_nullable_to_non_nullable
                      as HrSalariesVisualizationModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of HrSalariesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HrSalariesInsightModelCopyWith<$Res>? get insight {
    if (_value.insight == null) {
      return null;
    }

    return $HrSalariesInsightModelCopyWith<$Res>(_value.insight!, (value) {
      return _then(_value.copyWith(insight: value) as $Val);
    });
  }

  /// Create a copy of HrSalariesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HrSalariesMetaModelCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $HrSalariesMetaModelCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  /// Create a copy of HrSalariesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HrSalariesPredictionModelCopyWith<$Res>? get prediction {
    if (_value.prediction == null) {
      return null;
    }

    return $HrSalariesPredictionModelCopyWith<$Res>(_value.prediction!, (
      value,
    ) {
      return _then(_value.copyWith(prediction: value) as $Val);
    });
  }

  /// Create a copy of HrSalariesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HrSalariesVisualizationModelCopyWith<$Res>? get visualization {
    if (_value.visualization == null) {
      return null;
    }

    return $HrSalariesVisualizationModelCopyWith<$Res>(_value.visualization!, (
      value,
    ) {
      return _then(_value.copyWith(visualization: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HrSalariesModelImplCopyWith<$Res>
    implements $HrSalariesModelCopyWith<$Res> {
  factory _$$HrSalariesModelImplCopyWith(
    _$HrSalariesModelImpl value,
    $Res Function(_$HrSalariesModelImpl) then,
  ) = __$$HrSalariesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'insight') HrSalariesInsightModel? insight,
    @JsonKey(name: 'meta') HrSalariesMetaModel? meta,
    @JsonKey(name: 'prediction') HrSalariesPredictionModel? prediction,
    @JsonKey(name: 'visualization') HrSalariesVisualizationModel? visualization,
  });

  @override
  $HrSalariesInsightModelCopyWith<$Res>? get insight;
  @override
  $HrSalariesMetaModelCopyWith<$Res>? get meta;
  @override
  $HrSalariesPredictionModelCopyWith<$Res>? get prediction;
  @override
  $HrSalariesVisualizationModelCopyWith<$Res>? get visualization;
}

/// @nodoc
class __$$HrSalariesModelImplCopyWithImpl<$Res>
    extends _$HrSalariesModelCopyWithImpl<$Res, _$HrSalariesModelImpl>
    implements _$$HrSalariesModelImplCopyWith<$Res> {
  __$$HrSalariesModelImplCopyWithImpl(
    _$HrSalariesModelImpl _value,
    $Res Function(_$HrSalariesModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HrSalariesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insight = freezed,
    Object? meta = freezed,
    Object? prediction = freezed,
    Object? visualization = freezed,
  }) {
    return _then(
      _$HrSalariesModelImpl(
        insight: freezed == insight
            ? _value.insight
            : insight // ignore: cast_nullable_to_non_nullable
                  as HrSalariesInsightModel?,
        meta: freezed == meta
            ? _value.meta
            : meta // ignore: cast_nullable_to_non_nullable
                  as HrSalariesMetaModel?,
        prediction: freezed == prediction
            ? _value.prediction
            : prediction // ignore: cast_nullable_to_non_nullable
                  as HrSalariesPredictionModel?,
        visualization: freezed == visualization
            ? _value.visualization
            : visualization // ignore: cast_nullable_to_non_nullable
                  as HrSalariesVisualizationModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HrSalariesModelImpl extends _HrSalariesModel {
  const _$HrSalariesModelImpl({
    @JsonKey(name: 'insight') this.insight,
    @JsonKey(name: 'meta') this.meta,
    @JsonKey(name: 'prediction') this.prediction,
    @JsonKey(name: 'visualization') this.visualization,
  }) : super._();

  factory _$HrSalariesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HrSalariesModelImplFromJson(json);

  @override
  @JsonKey(name: 'insight')
  final HrSalariesInsightModel? insight;
  @override
  @JsonKey(name: 'meta')
  final HrSalariesMetaModel? meta;
  @override
  @JsonKey(name: 'prediction')
  final HrSalariesPredictionModel? prediction;
  @override
  @JsonKey(name: 'visualization')
  final HrSalariesVisualizationModel? visualization;

  @override
  String toString() {
    return 'HrSalariesModel(insight: $insight, meta: $meta, prediction: $prediction, visualization: $visualization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HrSalariesModelImpl &&
            (identical(other.insight, insight) || other.insight == insight) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.prediction, prediction) ||
                other.prediction == prediction) &&
            (identical(other.visualization, visualization) ||
                other.visualization == visualization));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, insight, meta, prediction, visualization);

  /// Create a copy of HrSalariesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HrSalariesModelImplCopyWith<_$HrSalariesModelImpl> get copyWith =>
      __$$HrSalariesModelImplCopyWithImpl<_$HrSalariesModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HrSalariesModelImplToJson(this);
  }
}

abstract class _HrSalariesModel extends HrSalariesModel {
  const factory _HrSalariesModel({
    @JsonKey(name: 'insight') final HrSalariesInsightModel? insight,
    @JsonKey(name: 'meta') final HrSalariesMetaModel? meta,
    @JsonKey(name: 'prediction') final HrSalariesPredictionModel? prediction,
    @JsonKey(name: 'visualization')
    final HrSalariesVisualizationModel? visualization,
  }) = _$HrSalariesModelImpl;
  const _HrSalariesModel._() : super._();

  factory _HrSalariesModel.fromJson(Map<String, dynamic> json) =
      _$HrSalariesModelImpl.fromJson;

  @override
  @JsonKey(name: 'insight')
  HrSalariesInsightModel? get insight;
  @override
  @JsonKey(name: 'meta')
  HrSalariesMetaModel? get meta;
  @override
  @JsonKey(name: 'prediction')
  HrSalariesPredictionModel? get prediction;
  @override
  @JsonKey(name: 'visualization')
  HrSalariesVisualizationModel? get visualization;

  /// Create a copy of HrSalariesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HrSalariesModelImplCopyWith<_$HrSalariesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
