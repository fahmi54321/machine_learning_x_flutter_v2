// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_vector_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SupportVectorModel _$SupportVectorModelFromJson(Map<String, dynamic> json) {
  return _SupportVectorModel.fromJson(json);
}

/// @nodoc
mixin _$SupportVectorModel {
  @JsonKey(name: 'age', defaultValue: 0)
  double get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_salary', defaultValue: 0)
  double get estimatedSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'point_color', defaultValue: '')
  String get pointColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'point_type', defaultValue: '')
  String get pointType => throw _privateConstructorUsedError;

  /// Serializes this SupportVectorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportVectorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportVectorModelCopyWith<SupportVectorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportVectorModelCopyWith<$Res> {
  factory $SupportVectorModelCopyWith(
    SupportVectorModel value,
    $Res Function(SupportVectorModel) then,
  ) = _$SupportVectorModelCopyWithImpl<$Res, SupportVectorModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'age', defaultValue: 0) double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0) double estimatedSalary,
    @JsonKey(name: 'point_color', defaultValue: '') String pointColor,
    @JsonKey(name: 'point_type', defaultValue: '') String pointType,
  });
}

/// @nodoc
class _$SupportVectorModelCopyWithImpl<$Res, $Val extends SupportVectorModel>
    implements $SupportVectorModelCopyWith<$Res> {
  _$SupportVectorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportVectorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? estimatedSalary = null,
    Object? pointColor = null,
    Object? pointType = null,
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
            pointColor: null == pointColor
                ? _value.pointColor
                : pointColor // ignore: cast_nullable_to_non_nullable
                      as String,
            pointType: null == pointType
                ? _value.pointType
                : pointType // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SupportVectorModelImplCopyWith<$Res>
    implements $SupportVectorModelCopyWith<$Res> {
  factory _$$SupportVectorModelImplCopyWith(
    _$SupportVectorModelImpl value,
    $Res Function(_$SupportVectorModelImpl) then,
  ) = __$$SupportVectorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'age', defaultValue: 0) double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0) double estimatedSalary,
    @JsonKey(name: 'point_color', defaultValue: '') String pointColor,
    @JsonKey(name: 'point_type', defaultValue: '') String pointType,
  });
}

/// @nodoc
class __$$SupportVectorModelImplCopyWithImpl<$Res>
    extends _$SupportVectorModelCopyWithImpl<$Res, _$SupportVectorModelImpl>
    implements _$$SupportVectorModelImplCopyWith<$Res> {
  __$$SupportVectorModelImplCopyWithImpl(
    _$SupportVectorModelImpl _value,
    $Res Function(_$SupportVectorModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SupportVectorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? estimatedSalary = null,
    Object? pointColor = null,
    Object? pointType = null,
  }) {
    return _then(
      _$SupportVectorModelImpl(
        age: null == age
            ? _value.age
            : age // ignore: cast_nullable_to_non_nullable
                  as double,
        estimatedSalary: null == estimatedSalary
            ? _value.estimatedSalary
            : estimatedSalary // ignore: cast_nullable_to_non_nullable
                  as double,
        pointColor: null == pointColor
            ? _value.pointColor
            : pointColor // ignore: cast_nullable_to_non_nullable
                  as String,
        pointType: null == pointType
            ? _value.pointType
            : pointType // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportVectorModelImpl extends _SupportVectorModel {
  const _$SupportVectorModelImpl({
    @JsonKey(name: 'age', defaultValue: 0) required this.age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required this.estimatedSalary,
    @JsonKey(name: 'point_color', defaultValue: '') required this.pointColor,
    @JsonKey(name: 'point_type', defaultValue: '') required this.pointType,
  }) : super._();

  factory _$SupportVectorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportVectorModelImplFromJson(json);

  @override
  @JsonKey(name: 'age', defaultValue: 0)
  final double age;
  @override
  @JsonKey(name: 'estimated_salary', defaultValue: 0)
  final double estimatedSalary;
  @override
  @JsonKey(name: 'point_color', defaultValue: '')
  final String pointColor;
  @override
  @JsonKey(name: 'point_type', defaultValue: '')
  final String pointType;

  @override
  String toString() {
    return 'SupportVectorModel(age: $age, estimatedSalary: $estimatedSalary, pointColor: $pointColor, pointType: $pointType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportVectorModelImpl &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.estimatedSalary, estimatedSalary) ||
                other.estimatedSalary == estimatedSalary) &&
            (identical(other.pointColor, pointColor) ||
                other.pointColor == pointColor) &&
            (identical(other.pointType, pointType) ||
                other.pointType == pointType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, age, estimatedSalary, pointColor, pointType);

  /// Create a copy of SupportVectorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportVectorModelImplCopyWith<_$SupportVectorModelImpl> get copyWith =>
      __$$SupportVectorModelImplCopyWithImpl<_$SupportVectorModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportVectorModelImplToJson(this);
  }
}

abstract class _SupportVectorModel extends SupportVectorModel {
  const factory _SupportVectorModel({
    @JsonKey(name: 'age', defaultValue: 0) required final double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required final double estimatedSalary,
    @JsonKey(name: 'point_color', defaultValue: '')
    required final String pointColor,
    @JsonKey(name: 'point_type', defaultValue: '')
    required final String pointType,
  }) = _$SupportVectorModelImpl;
  const _SupportVectorModel._() : super._();

  factory _SupportVectorModel.fromJson(Map<String, dynamic> json) =
      _$SupportVectorModelImpl.fromJson;

  @override
  @JsonKey(name: 'age', defaultValue: 0)
  double get age;
  @override
  @JsonKey(name: 'estimated_salary', defaultValue: 0)
  double get estimatedSalary;
  @override
  @JsonKey(name: 'point_color', defaultValue: '')
  String get pointColor;
  @override
  @JsonKey(name: 'point_type', defaultValue: '')
  String get pointType;

  /// Create a copy of SupportVectorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportVectorModelImplCopyWith<_$SupportVectorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
