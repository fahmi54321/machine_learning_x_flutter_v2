// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plot_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PlotDataModel _$PlotDataModelFromJson(Map<String, dynamic> json) {
  return _PlotDataModel.fromJson(json);
}

/// @nodoc
mixin _$PlotDataModel {
  @JsonKey(name: 'axis')
  AxisModel? get axis => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_points', defaultValue: [])
  List<CustomerPointModel> get customerPoints =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'decision_boundary', defaultValue: [])
  List<DecisionBoundaryModel> get decisionBoundary =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'negative_hyperplane', defaultValue: [])
  List<HyperplaneModel> get negativeHyperplane =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'positive_hyperplane', defaultValue: [])
  List<HyperplaneModel> get positiveHyperplane =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'support_vectors', defaultValue: [])
  List<SupportVectorModel> get supportVectors =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'legend')
  LegendModel? get legend => throw _privateConstructorUsedError;
  @JsonKey(name: 'model', defaultValue: '')
  String get model => throw _privateConstructorUsedError;
  @JsonKey(name: 'plot_range')
  PlotRangeModel? get plotRange => throw _privateConstructorUsedError;
  @JsonKey(name: 'prediction_regions', defaultValue: [])
  List<PredictionRegionsModel> get predictionRegions =>
      throw _privateConstructorUsedError;

  /// Serializes this PlotDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlotDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlotDataModelCopyWith<PlotDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlotDataModelCopyWith<$Res> {
  factory $PlotDataModelCopyWith(
    PlotDataModel value,
    $Res Function(PlotDataModel) then,
  ) = _$PlotDataModelCopyWithImpl<$Res, PlotDataModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'axis') AxisModel? axis,
    @JsonKey(name: 'customer_points', defaultValue: [])
    List<CustomerPointModel> customerPoints,
    @JsonKey(name: 'decision_boundary', defaultValue: [])
    List<DecisionBoundaryModel> decisionBoundary,
    @JsonKey(name: 'negative_hyperplane', defaultValue: [])
    List<HyperplaneModel> negativeHyperplane,
    @JsonKey(name: 'positive_hyperplane', defaultValue: [])
    List<HyperplaneModel> positiveHyperplane,
    @JsonKey(name: 'support_vectors', defaultValue: [])
    List<SupportVectorModel> supportVectors,
    @JsonKey(name: 'legend') LegendModel? legend,
    @JsonKey(name: 'model', defaultValue: '') String model,
    @JsonKey(name: 'plot_range') PlotRangeModel? plotRange,
    @JsonKey(name: 'prediction_regions', defaultValue: [])
    List<PredictionRegionsModel> predictionRegions,
  });

  $AxisModelCopyWith<$Res>? get axis;
  $LegendModelCopyWith<$Res>? get legend;
  $PlotRangeModelCopyWith<$Res>? get plotRange;
}

/// @nodoc
class _$PlotDataModelCopyWithImpl<$Res, $Val extends PlotDataModel>
    implements $PlotDataModelCopyWith<$Res> {
  _$PlotDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlotDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? axis = freezed,
    Object? customerPoints = null,
    Object? decisionBoundary = null,
    Object? negativeHyperplane = null,
    Object? positiveHyperplane = null,
    Object? supportVectors = null,
    Object? legend = freezed,
    Object? model = null,
    Object? plotRange = freezed,
    Object? predictionRegions = null,
  }) {
    return _then(
      _value.copyWith(
            axis: freezed == axis
                ? _value.axis
                : axis // ignore: cast_nullable_to_non_nullable
                      as AxisModel?,
            customerPoints: null == customerPoints
                ? _value.customerPoints
                : customerPoints // ignore: cast_nullable_to_non_nullable
                      as List<CustomerPointModel>,
            decisionBoundary: null == decisionBoundary
                ? _value.decisionBoundary
                : decisionBoundary // ignore: cast_nullable_to_non_nullable
                      as List<DecisionBoundaryModel>,
            negativeHyperplane: null == negativeHyperplane
                ? _value.negativeHyperplane
                : negativeHyperplane // ignore: cast_nullable_to_non_nullable
                      as List<HyperplaneModel>,
            positiveHyperplane: null == positiveHyperplane
                ? _value.positiveHyperplane
                : positiveHyperplane // ignore: cast_nullable_to_non_nullable
                      as List<HyperplaneModel>,
            supportVectors: null == supportVectors
                ? _value.supportVectors
                : supportVectors // ignore: cast_nullable_to_non_nullable
                      as List<SupportVectorModel>,
            legend: freezed == legend
                ? _value.legend
                : legend // ignore: cast_nullable_to_non_nullable
                      as LegendModel?,
            model: null == model
                ? _value.model
                : model // ignore: cast_nullable_to_non_nullable
                      as String,
            plotRange: freezed == plotRange
                ? _value.plotRange
                : plotRange // ignore: cast_nullable_to_non_nullable
                      as PlotRangeModel?,
            predictionRegions: null == predictionRegions
                ? _value.predictionRegions
                : predictionRegions // ignore: cast_nullable_to_non_nullable
                      as List<PredictionRegionsModel>,
          )
          as $Val,
    );
  }

  /// Create a copy of PlotDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AxisModelCopyWith<$Res>? get axis {
    if (_value.axis == null) {
      return null;
    }

    return $AxisModelCopyWith<$Res>(_value.axis!, (value) {
      return _then(_value.copyWith(axis: value) as $Val);
    });
  }

  /// Create a copy of PlotDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LegendModelCopyWith<$Res>? get legend {
    if (_value.legend == null) {
      return null;
    }

    return $LegendModelCopyWith<$Res>(_value.legend!, (value) {
      return _then(_value.copyWith(legend: value) as $Val);
    });
  }

  /// Create a copy of PlotDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlotRangeModelCopyWith<$Res>? get plotRange {
    if (_value.plotRange == null) {
      return null;
    }

    return $PlotRangeModelCopyWith<$Res>(_value.plotRange!, (value) {
      return _then(_value.copyWith(plotRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlotDataModelImplCopyWith<$Res>
    implements $PlotDataModelCopyWith<$Res> {
  factory _$$PlotDataModelImplCopyWith(
    _$PlotDataModelImpl value,
    $Res Function(_$PlotDataModelImpl) then,
  ) = __$$PlotDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'axis') AxisModel? axis,
    @JsonKey(name: 'customer_points', defaultValue: [])
    List<CustomerPointModel> customerPoints,
    @JsonKey(name: 'decision_boundary', defaultValue: [])
    List<DecisionBoundaryModel> decisionBoundary,
    @JsonKey(name: 'negative_hyperplane', defaultValue: [])
    List<HyperplaneModel> negativeHyperplane,
    @JsonKey(name: 'positive_hyperplane', defaultValue: [])
    List<HyperplaneModel> positiveHyperplane,
    @JsonKey(name: 'support_vectors', defaultValue: [])
    List<SupportVectorModel> supportVectors,
    @JsonKey(name: 'legend') LegendModel? legend,
    @JsonKey(name: 'model', defaultValue: '') String model,
    @JsonKey(name: 'plot_range') PlotRangeModel? plotRange,
    @JsonKey(name: 'prediction_regions', defaultValue: [])
    List<PredictionRegionsModel> predictionRegions,
  });

  @override
  $AxisModelCopyWith<$Res>? get axis;
  @override
  $LegendModelCopyWith<$Res>? get legend;
  @override
  $PlotRangeModelCopyWith<$Res>? get plotRange;
}

/// @nodoc
class __$$PlotDataModelImplCopyWithImpl<$Res>
    extends _$PlotDataModelCopyWithImpl<$Res, _$PlotDataModelImpl>
    implements _$$PlotDataModelImplCopyWith<$Res> {
  __$$PlotDataModelImplCopyWithImpl(
    _$PlotDataModelImpl _value,
    $Res Function(_$PlotDataModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlotDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? axis = freezed,
    Object? customerPoints = null,
    Object? decisionBoundary = null,
    Object? negativeHyperplane = null,
    Object? positiveHyperplane = null,
    Object? supportVectors = null,
    Object? legend = freezed,
    Object? model = null,
    Object? plotRange = freezed,
    Object? predictionRegions = null,
  }) {
    return _then(
      _$PlotDataModelImpl(
        axis: freezed == axis
            ? _value.axis
            : axis // ignore: cast_nullable_to_non_nullable
                  as AxisModel?,
        customerPoints: null == customerPoints
            ? _value._customerPoints
            : customerPoints // ignore: cast_nullable_to_non_nullable
                  as List<CustomerPointModel>,
        decisionBoundary: null == decisionBoundary
            ? _value._decisionBoundary
            : decisionBoundary // ignore: cast_nullable_to_non_nullable
                  as List<DecisionBoundaryModel>,
        negativeHyperplane: null == negativeHyperplane
            ? _value._negativeHyperplane
            : negativeHyperplane // ignore: cast_nullable_to_non_nullable
                  as List<HyperplaneModel>,
        positiveHyperplane: null == positiveHyperplane
            ? _value._positiveHyperplane
            : positiveHyperplane // ignore: cast_nullable_to_non_nullable
                  as List<HyperplaneModel>,
        supportVectors: null == supportVectors
            ? _value._supportVectors
            : supportVectors // ignore: cast_nullable_to_non_nullable
                  as List<SupportVectorModel>,
        legend: freezed == legend
            ? _value.legend
            : legend // ignore: cast_nullable_to_non_nullable
                  as LegendModel?,
        model: null == model
            ? _value.model
            : model // ignore: cast_nullable_to_non_nullable
                  as String,
        plotRange: freezed == plotRange
            ? _value.plotRange
            : plotRange // ignore: cast_nullable_to_non_nullable
                  as PlotRangeModel?,
        predictionRegions: null == predictionRegions
            ? _value._predictionRegions
            : predictionRegions // ignore: cast_nullable_to_non_nullable
                  as List<PredictionRegionsModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlotDataModelImpl extends _PlotDataModel {
  const _$PlotDataModelImpl({
    @JsonKey(name: 'axis') this.axis,
    @JsonKey(name: 'customer_points', defaultValue: [])
    required final List<CustomerPointModel> customerPoints,
    @JsonKey(name: 'decision_boundary', defaultValue: [])
    required final List<DecisionBoundaryModel> decisionBoundary,
    @JsonKey(name: 'negative_hyperplane', defaultValue: [])
    required final List<HyperplaneModel> negativeHyperplane,
    @JsonKey(name: 'positive_hyperplane', defaultValue: [])
    required final List<HyperplaneModel> positiveHyperplane,
    @JsonKey(name: 'support_vectors', defaultValue: [])
    required final List<SupportVectorModel> supportVectors,
    @JsonKey(name: 'legend') this.legend,
    @JsonKey(name: 'model', defaultValue: '') required this.model,
    @JsonKey(name: 'plot_range') this.plotRange,
    @JsonKey(name: 'prediction_regions', defaultValue: [])
    required final List<PredictionRegionsModel> predictionRegions,
  }) : _customerPoints = customerPoints,
       _decisionBoundary = decisionBoundary,
       _negativeHyperplane = negativeHyperplane,
       _positiveHyperplane = positiveHyperplane,
       _supportVectors = supportVectors,
       _predictionRegions = predictionRegions,
       super._();

  factory _$PlotDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlotDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'axis')
  final AxisModel? axis;
  final List<CustomerPointModel> _customerPoints;
  @override
  @JsonKey(name: 'customer_points', defaultValue: [])
  List<CustomerPointModel> get customerPoints {
    if (_customerPoints is EqualUnmodifiableListView) return _customerPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customerPoints);
  }

  final List<DecisionBoundaryModel> _decisionBoundary;
  @override
  @JsonKey(name: 'decision_boundary', defaultValue: [])
  List<DecisionBoundaryModel> get decisionBoundary {
    if (_decisionBoundary is EqualUnmodifiableListView)
      return _decisionBoundary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_decisionBoundary);
  }

  final List<HyperplaneModel> _negativeHyperplane;
  @override
  @JsonKey(name: 'negative_hyperplane', defaultValue: [])
  List<HyperplaneModel> get negativeHyperplane {
    if (_negativeHyperplane is EqualUnmodifiableListView)
      return _negativeHyperplane;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_negativeHyperplane);
  }

  final List<HyperplaneModel> _positiveHyperplane;
  @override
  @JsonKey(name: 'positive_hyperplane', defaultValue: [])
  List<HyperplaneModel> get positiveHyperplane {
    if (_positiveHyperplane is EqualUnmodifiableListView)
      return _positiveHyperplane;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_positiveHyperplane);
  }

  final List<SupportVectorModel> _supportVectors;
  @override
  @JsonKey(name: 'support_vectors', defaultValue: [])
  List<SupportVectorModel> get supportVectors {
    if (_supportVectors is EqualUnmodifiableListView) return _supportVectors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportVectors);
  }

  @override
  @JsonKey(name: 'legend')
  final LegendModel? legend;
  @override
  @JsonKey(name: 'model', defaultValue: '')
  final String model;
  @override
  @JsonKey(name: 'plot_range')
  final PlotRangeModel? plotRange;
  final List<PredictionRegionsModel> _predictionRegions;
  @override
  @JsonKey(name: 'prediction_regions', defaultValue: [])
  List<PredictionRegionsModel> get predictionRegions {
    if (_predictionRegions is EqualUnmodifiableListView)
      return _predictionRegions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_predictionRegions);
  }

  @override
  String toString() {
    return 'PlotDataModel(axis: $axis, customerPoints: $customerPoints, decisionBoundary: $decisionBoundary, negativeHyperplane: $negativeHyperplane, positiveHyperplane: $positiveHyperplane, supportVectors: $supportVectors, legend: $legend, model: $model, plotRange: $plotRange, predictionRegions: $predictionRegions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlotDataModelImpl &&
            (identical(other.axis, axis) || other.axis == axis) &&
            const DeepCollectionEquality().equals(
              other._customerPoints,
              _customerPoints,
            ) &&
            const DeepCollectionEquality().equals(
              other._decisionBoundary,
              _decisionBoundary,
            ) &&
            const DeepCollectionEquality().equals(
              other._negativeHyperplane,
              _negativeHyperplane,
            ) &&
            const DeepCollectionEquality().equals(
              other._positiveHyperplane,
              _positiveHyperplane,
            ) &&
            const DeepCollectionEquality().equals(
              other._supportVectors,
              _supportVectors,
            ) &&
            (identical(other.legend, legend) || other.legend == legend) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.plotRange, plotRange) ||
                other.plotRange == plotRange) &&
            const DeepCollectionEquality().equals(
              other._predictionRegions,
              _predictionRegions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    axis,
    const DeepCollectionEquality().hash(_customerPoints),
    const DeepCollectionEquality().hash(_decisionBoundary),
    const DeepCollectionEquality().hash(_negativeHyperplane),
    const DeepCollectionEquality().hash(_positiveHyperplane),
    const DeepCollectionEquality().hash(_supportVectors),
    legend,
    model,
    plotRange,
    const DeepCollectionEquality().hash(_predictionRegions),
  );

  /// Create a copy of PlotDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlotDataModelImplCopyWith<_$PlotDataModelImpl> get copyWith =>
      __$$PlotDataModelImplCopyWithImpl<_$PlotDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlotDataModelImplToJson(this);
  }
}

abstract class _PlotDataModel extends PlotDataModel {
  const factory _PlotDataModel({
    @JsonKey(name: 'axis') final AxisModel? axis,
    @JsonKey(name: 'customer_points', defaultValue: [])
    required final List<CustomerPointModel> customerPoints,
    @JsonKey(name: 'decision_boundary', defaultValue: [])
    required final List<DecisionBoundaryModel> decisionBoundary,
    @JsonKey(name: 'negative_hyperplane', defaultValue: [])
    required final List<HyperplaneModel> negativeHyperplane,
    @JsonKey(name: 'positive_hyperplane', defaultValue: [])
    required final List<HyperplaneModel> positiveHyperplane,
    @JsonKey(name: 'support_vectors', defaultValue: [])
    required final List<SupportVectorModel> supportVectors,
    @JsonKey(name: 'legend') final LegendModel? legend,
    @JsonKey(name: 'model', defaultValue: '') required final String model,
    @JsonKey(name: 'plot_range') final PlotRangeModel? plotRange,
    @JsonKey(name: 'prediction_regions', defaultValue: [])
    required final List<PredictionRegionsModel> predictionRegions,
  }) = _$PlotDataModelImpl;
  const _PlotDataModel._() : super._();

  factory _PlotDataModel.fromJson(Map<String, dynamic> json) =
      _$PlotDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'axis')
  AxisModel? get axis;
  @override
  @JsonKey(name: 'customer_points', defaultValue: [])
  List<CustomerPointModel> get customerPoints;
  @override
  @JsonKey(name: 'decision_boundary', defaultValue: [])
  List<DecisionBoundaryModel> get decisionBoundary;
  @override
  @JsonKey(name: 'negative_hyperplane', defaultValue: [])
  List<HyperplaneModel> get negativeHyperplane;
  @override
  @JsonKey(name: 'positive_hyperplane', defaultValue: [])
  List<HyperplaneModel> get positiveHyperplane;
  @override
  @JsonKey(name: 'support_vectors', defaultValue: [])
  List<SupportVectorModel> get supportVectors;
  @override
  @JsonKey(name: 'legend')
  LegendModel? get legend;
  @override
  @JsonKey(name: 'model', defaultValue: '')
  String get model;
  @override
  @JsonKey(name: 'plot_range')
  PlotRangeModel? get plotRange;
  @override
  @JsonKey(name: 'prediction_regions', defaultValue: [])
  List<PredictionRegionsModel> get predictionRegions;

  /// Create a copy of PlotDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlotDataModelImplCopyWith<_$PlotDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
