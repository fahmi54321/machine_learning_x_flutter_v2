// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hyperplane_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HyperplaneModel _$HyperplaneModelFromJson(Map<String, dynamic> json) {
  return _HyperplaneModel.fromJson(json);
}

/// @nodoc
mixin _$HyperplaneModel {
  @JsonKey(name: 'age', defaultValue: 0)
  double get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_salary', defaultValue: 0)
  double get estimatedSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'hyperplane_type', defaultValue: '')
  String get hyperplaneType => throw _privateConstructorUsedError;

  /// Serializes this HyperplaneModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HyperplaneModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HyperplaneModelCopyWith<HyperplaneModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HyperplaneModelCopyWith<$Res> {
  factory $HyperplaneModelCopyWith(
    HyperplaneModel value,
    $Res Function(HyperplaneModel) then,
  ) = _$HyperplaneModelCopyWithImpl<$Res, HyperplaneModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'age', defaultValue: 0) double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0) double estimatedSalary,
    @JsonKey(name: 'hyperplane_type', defaultValue: '') String hyperplaneType,
  });
}

/// @nodoc
class _$HyperplaneModelCopyWithImpl<$Res, $Val extends HyperplaneModel>
    implements $HyperplaneModelCopyWith<$Res> {
  _$HyperplaneModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HyperplaneModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? estimatedSalary = null,
    Object? hyperplaneType = null,
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
            hyperplaneType: null == hyperplaneType
                ? _value.hyperplaneType
                : hyperplaneType // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HyperplaneModelImplCopyWith<$Res>
    implements $HyperplaneModelCopyWith<$Res> {
  factory _$$HyperplaneModelImplCopyWith(
    _$HyperplaneModelImpl value,
    $Res Function(_$HyperplaneModelImpl) then,
  ) = __$$HyperplaneModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'age', defaultValue: 0) double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0) double estimatedSalary,
    @JsonKey(name: 'hyperplane_type', defaultValue: '') String hyperplaneType,
  });
}

/// @nodoc
class __$$HyperplaneModelImplCopyWithImpl<$Res>
    extends _$HyperplaneModelCopyWithImpl<$Res, _$HyperplaneModelImpl>
    implements _$$HyperplaneModelImplCopyWith<$Res> {
  __$$HyperplaneModelImplCopyWithImpl(
    _$HyperplaneModelImpl _value,
    $Res Function(_$HyperplaneModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HyperplaneModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? estimatedSalary = null,
    Object? hyperplaneType = null,
  }) {
    return _then(
      _$HyperplaneModelImpl(
        age: null == age
            ? _value.age
            : age // ignore: cast_nullable_to_non_nullable
                  as double,
        estimatedSalary: null == estimatedSalary
            ? _value.estimatedSalary
            : estimatedSalary // ignore: cast_nullable_to_non_nullable
                  as double,
        hyperplaneType: null == hyperplaneType
            ? _value.hyperplaneType
            : hyperplaneType // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HyperplaneModelImpl extends _HyperplaneModel {
  const _$HyperplaneModelImpl({
    @JsonKey(name: 'age', defaultValue: 0) required this.age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required this.estimatedSalary,
    @JsonKey(name: 'hyperplane_type', defaultValue: '')
    required this.hyperplaneType,
  }) : super._();

  factory _$HyperplaneModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HyperplaneModelImplFromJson(json);

  @override
  @JsonKey(name: 'age', defaultValue: 0)
  final double age;
  @override
  @JsonKey(name: 'estimated_salary', defaultValue: 0)
  final double estimatedSalary;
  @override
  @JsonKey(name: 'hyperplane_type', defaultValue: '')
  final String hyperplaneType;

  @override
  String toString() {
    return 'HyperplaneModel(age: $age, estimatedSalary: $estimatedSalary, hyperplaneType: $hyperplaneType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HyperplaneModelImpl &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.estimatedSalary, estimatedSalary) ||
                other.estimatedSalary == estimatedSalary) &&
            (identical(other.hyperplaneType, hyperplaneType) ||
                other.hyperplaneType == hyperplaneType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, age, estimatedSalary, hyperplaneType);

  /// Create a copy of HyperplaneModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HyperplaneModelImplCopyWith<_$HyperplaneModelImpl> get copyWith =>
      __$$HyperplaneModelImplCopyWithImpl<_$HyperplaneModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HyperplaneModelImplToJson(this);
  }
}

abstract class _HyperplaneModel extends HyperplaneModel {
  const factory _HyperplaneModel({
    @JsonKey(name: 'age', defaultValue: 0) required final double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required final double estimatedSalary,
    @JsonKey(name: 'hyperplane_type', defaultValue: '')
    required final String hyperplaneType,
  }) = _$HyperplaneModelImpl;
  const _HyperplaneModel._() : super._();

  factory _HyperplaneModel.fromJson(Map<String, dynamic> json) =
      _$HyperplaneModelImpl.fromJson;

  @override
  @JsonKey(name: 'age', defaultValue: 0)
  double get age;
  @override
  @JsonKey(name: 'estimated_salary', defaultValue: 0)
  double get estimatedSalary;
  @override
  @JsonKey(name: 'hyperplane_type', defaultValue: '')
  String get hyperplaneType;

  /// Create a copy of HyperplaneModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HyperplaneModelImplCopyWith<_$HyperplaneModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
