// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decision_boundary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DecisionBoundaryModel _$DecisionBoundaryModelFromJson(
  Map<String, dynamic> json,
) {
  return _DecisionBoundaryModel.fromJson(json);
}

/// @nodoc
mixin _$DecisionBoundaryModel {
  @JsonKey(name: 'age', defaultValue: 0)
  double get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_salary', defaultValue: 0)
  double get estimatedSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'probability', defaultValue: 0)
  double get probability => throw _privateConstructorUsedError;

  /// Serializes this DecisionBoundaryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DecisionBoundaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DecisionBoundaryModelCopyWith<DecisionBoundaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecisionBoundaryModelCopyWith<$Res> {
  factory $DecisionBoundaryModelCopyWith(
    DecisionBoundaryModel value,
    $Res Function(DecisionBoundaryModel) then,
  ) = _$DecisionBoundaryModelCopyWithImpl<$Res, DecisionBoundaryModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'age', defaultValue: 0) double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0) double estimatedSalary,
    @JsonKey(name: 'probability', defaultValue: 0) double probability,
  });
}

/// @nodoc
class _$DecisionBoundaryModelCopyWithImpl<
  $Res,
  $Val extends DecisionBoundaryModel
>
    implements $DecisionBoundaryModelCopyWith<$Res> {
  _$DecisionBoundaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DecisionBoundaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? estimatedSalary = null,
    Object? probability = null,
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
            probability: null == probability
                ? _value.probability
                : probability // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DecisionBoundaryModelImplCopyWith<$Res>
    implements $DecisionBoundaryModelCopyWith<$Res> {
  factory _$$DecisionBoundaryModelImplCopyWith(
    _$DecisionBoundaryModelImpl value,
    $Res Function(_$DecisionBoundaryModelImpl) then,
  ) = __$$DecisionBoundaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'age', defaultValue: 0) double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0) double estimatedSalary,
    @JsonKey(name: 'probability', defaultValue: 0) double probability,
  });
}

/// @nodoc
class __$$DecisionBoundaryModelImplCopyWithImpl<$Res>
    extends
        _$DecisionBoundaryModelCopyWithImpl<$Res, _$DecisionBoundaryModelImpl>
    implements _$$DecisionBoundaryModelImplCopyWith<$Res> {
  __$$DecisionBoundaryModelImplCopyWithImpl(
    _$DecisionBoundaryModelImpl _value,
    $Res Function(_$DecisionBoundaryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DecisionBoundaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? estimatedSalary = null,
    Object? probability = null,
  }) {
    return _then(
      _$DecisionBoundaryModelImpl(
        age: null == age
            ? _value.age
            : age // ignore: cast_nullable_to_non_nullable
                  as double,
        estimatedSalary: null == estimatedSalary
            ? _value.estimatedSalary
            : estimatedSalary // ignore: cast_nullable_to_non_nullable
                  as double,
        probability: null == probability
            ? _value.probability
            : probability // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DecisionBoundaryModelImpl extends _DecisionBoundaryModel {
  const _$DecisionBoundaryModelImpl({
    @JsonKey(name: 'age', defaultValue: 0) required this.age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required this.estimatedSalary,
    @JsonKey(name: 'probability', defaultValue: 0) required this.probability,
  }) : super._();

  factory _$DecisionBoundaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DecisionBoundaryModelImplFromJson(json);

  @override
  @JsonKey(name: 'age', defaultValue: 0)
  final double age;
  @override
  @JsonKey(name: 'estimated_salary', defaultValue: 0)
  final double estimatedSalary;
  @override
  @JsonKey(name: 'probability', defaultValue: 0)
  final double probability;

  @override
  String toString() {
    return 'DecisionBoundaryModel(age: $age, estimatedSalary: $estimatedSalary, probability: $probability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecisionBoundaryModelImpl &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.estimatedSalary, estimatedSalary) ||
                other.estimatedSalary == estimatedSalary) &&
            (identical(other.probability, probability) ||
                other.probability == probability));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, age, estimatedSalary, probability);

  /// Create a copy of DecisionBoundaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecisionBoundaryModelImplCopyWith<_$DecisionBoundaryModelImpl>
  get copyWith =>
      __$$DecisionBoundaryModelImplCopyWithImpl<_$DecisionBoundaryModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DecisionBoundaryModelImplToJson(this);
  }
}

abstract class _DecisionBoundaryModel extends DecisionBoundaryModel {
  const factory _DecisionBoundaryModel({
    @JsonKey(name: 'age', defaultValue: 0) required final double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required final double estimatedSalary,
    @JsonKey(name: 'probability', defaultValue: 0)
    required final double probability,
  }) = _$DecisionBoundaryModelImpl;
  const _DecisionBoundaryModel._() : super._();

  factory _DecisionBoundaryModel.fromJson(Map<String, dynamic> json) =
      _$DecisionBoundaryModelImpl.fromJson;

  @override
  @JsonKey(name: 'age', defaultValue: 0)
  double get age;
  @override
  @JsonKey(name: 'estimated_salary', defaultValue: 0)
  double get estimatedSalary;
  @override
  @JsonKey(name: 'probability', defaultValue: 0)
  double get probability;

  /// Create a copy of DecisionBoundaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecisionBoundaryModelImplCopyWith<_$DecisionBoundaryModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
