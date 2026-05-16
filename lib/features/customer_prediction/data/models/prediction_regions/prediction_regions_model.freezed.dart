// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prediction_regions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PredictionRegionsModel _$PredictionRegionsModelFromJson(
  Map<String, dynamic> json,
) {
  return _PredictionRegionsModel.fromJson(json);
}

/// @nodoc
mixin _$PredictionRegionsModel {
  @JsonKey(name: 'age', defaultValue: 0)
  double get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_salary', defaultValue: 0)
  double get estimatedSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'prediction', defaultValue: 0)
  int get prediction => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_color', defaultValue: '')
  String get regionColor => throw _privateConstructorUsedError;

  /// Serializes this PredictionRegionsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PredictionRegionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PredictionRegionsModelCopyWith<PredictionRegionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionRegionsModelCopyWith<$Res> {
  factory $PredictionRegionsModelCopyWith(
    PredictionRegionsModel value,
    $Res Function(PredictionRegionsModel) then,
  ) = _$PredictionRegionsModelCopyWithImpl<$Res, PredictionRegionsModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'age', defaultValue: 0) double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0) double estimatedSalary,
    @JsonKey(name: 'prediction', defaultValue: 0) int prediction,
    @JsonKey(name: 'region_color', defaultValue: '') String regionColor,
  });
}

/// @nodoc
class _$PredictionRegionsModelCopyWithImpl<
  $Res,
  $Val extends PredictionRegionsModel
>
    implements $PredictionRegionsModelCopyWith<$Res> {
  _$PredictionRegionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PredictionRegionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? estimatedSalary = null,
    Object? prediction = null,
    Object? regionColor = null,
  }) {
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
            prediction: null == prediction
                ? _value.prediction
                : prediction // ignore: cast_nullable_to_non_nullable
                      as int,
            regionColor: null == regionColor
                ? _value.regionColor
                : regionColor // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PredictionRegionsModelImplCopyWith<$Res>
    implements $PredictionRegionsModelCopyWith<$Res> {
  factory _$$PredictionRegionsModelImplCopyWith(
    _$PredictionRegionsModelImpl value,
    $Res Function(_$PredictionRegionsModelImpl) then,
  ) = __$$PredictionRegionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'age', defaultValue: 0) double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0) double estimatedSalary,
    @JsonKey(name: 'prediction', defaultValue: 0) int prediction,
    @JsonKey(name: 'region_color', defaultValue: '') String regionColor,
  });
}

/// @nodoc
class __$$PredictionRegionsModelImplCopyWithImpl<$Res>
    extends
        _$PredictionRegionsModelCopyWithImpl<$Res, _$PredictionRegionsModelImpl>
    implements _$$PredictionRegionsModelImplCopyWith<$Res> {
  __$$PredictionRegionsModelImplCopyWithImpl(
    _$PredictionRegionsModelImpl _value,
    $Res Function(_$PredictionRegionsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PredictionRegionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? estimatedSalary = null,
    Object? prediction = null,
    Object? regionColor = null,
  }) {
    return _then(
      _$PredictionRegionsModelImpl(
        age: null == age
            ? _value.age
            : age // ignore: cast_nullable_to_non_nullable
                  as double,
        estimatedSalary: null == estimatedSalary
            ? _value.estimatedSalary
            : estimatedSalary // ignore: cast_nullable_to_non_nullable
                  as double,
        prediction: null == prediction
            ? _value.prediction
            : prediction // ignore: cast_nullable_to_non_nullable
                  as int,
        regionColor: null == regionColor
            ? _value.regionColor
            : regionColor // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PredictionRegionsModelImpl extends _PredictionRegionsModel {
  const _$PredictionRegionsModelImpl({
    @JsonKey(name: 'age', defaultValue: 0) required this.age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required this.estimatedSalary,
    @JsonKey(name: 'prediction', defaultValue: 0) required this.prediction,
    @JsonKey(name: 'region_color', defaultValue: '') required this.regionColor,
  }) : super._();

  factory _$PredictionRegionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PredictionRegionsModelImplFromJson(json);

  @override
  @JsonKey(name: 'age', defaultValue: 0)
  final double age;
  @override
  @JsonKey(name: 'estimated_salary', defaultValue: 0)
  final double estimatedSalary;
  @override
  @JsonKey(name: 'prediction', defaultValue: 0)
  final int prediction;
  @override
  @JsonKey(name: 'region_color', defaultValue: '')
  final String regionColor;

  @override
  String toString() {
    return 'PredictionRegionsModel(age: $age, estimatedSalary: $estimatedSalary, prediction: $prediction, regionColor: $regionColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PredictionRegionsModelImpl &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.estimatedSalary, estimatedSalary) ||
                other.estimatedSalary == estimatedSalary) &&
            (identical(other.prediction, prediction) ||
                other.prediction == prediction) &&
            (identical(other.regionColor, regionColor) ||
                other.regionColor == regionColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, age, estimatedSalary, prediction, regionColor);

  /// Create a copy of PredictionRegionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PredictionRegionsModelImplCopyWith<_$PredictionRegionsModelImpl>
  get copyWith =>
      __$$PredictionRegionsModelImplCopyWithImpl<_$PredictionRegionsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PredictionRegionsModelImplToJson(this);
  }
}

abstract class _PredictionRegionsModel extends PredictionRegionsModel {
  const factory _PredictionRegionsModel({
    @JsonKey(name: 'age', defaultValue: 0) required final double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required final double estimatedSalary,
    @JsonKey(name: 'prediction', defaultValue: 0) required final int prediction,
    @JsonKey(name: 'region_color', defaultValue: '')
    required final String regionColor,
  }) = _$PredictionRegionsModelImpl;
  const _PredictionRegionsModel._() : super._();

  factory _PredictionRegionsModel.fromJson(Map<String, dynamic> json) =
      _$PredictionRegionsModelImpl.fromJson;

  @override
  @JsonKey(name: 'age', defaultValue: 0)
  double get age;
  @override
  @JsonKey(name: 'estimated_salary', defaultValue: 0)
  double get estimatedSalary;
  @override
  @JsonKey(name: 'prediction', defaultValue: 0)
  int get prediction;
  @override
  @JsonKey(name: 'region_color', defaultValue: '')
  String get regionColor;

  /// Create a copy of PredictionRegionsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PredictionRegionsModelImplCopyWith<_$PredictionRegionsModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
