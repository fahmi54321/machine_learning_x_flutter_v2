// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_point_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CustomerPointModel _$CustomerPointModelFromJson(Map<String, dynamic> json) {
  return _CustomerPointModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerPointModel {
  @JsonKey(name: 'actual_class', defaultValue: 0)
  int get actualClass => throw _privateConstructorUsedError;
  @JsonKey(name: 'age', defaultValue: 0)
  double get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_salary', defaultValue: 0)
  double get estimatedSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'point_color', defaultValue: '')
  String get pointColor => throw _privateConstructorUsedError;

  /// Serializes this CustomerPointModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerPointModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerPointModelCopyWith<CustomerPointModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerPointModelCopyWith<$Res> {
  factory $CustomerPointModelCopyWith(
    CustomerPointModel value,
    $Res Function(CustomerPointModel) then,
  ) = _$CustomerPointModelCopyWithImpl<$Res, CustomerPointModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'actual_class', defaultValue: 0) int actualClass,
    @JsonKey(name: 'age', defaultValue: 0) double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0) double estimatedSalary,
    @JsonKey(name: 'point_color', defaultValue: '') String pointColor,
  });
}

/// @nodoc
class _$CustomerPointModelCopyWithImpl<$Res, $Val extends CustomerPointModel>
    implements $CustomerPointModelCopyWith<$Res> {
  _$CustomerPointModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerPointModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actualClass = null,
    Object? age = null,
    Object? estimatedSalary = null,
    Object? pointColor = null,
  }) {
    return _then(
      _value.copyWith(
            actualClass: null == actualClass
                ? _value.actualClass
                : actualClass // ignore: cast_nullable_to_non_nullable
                      as int,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CustomerPointModelImplCopyWith<$Res>
    implements $CustomerPointModelCopyWith<$Res> {
  factory _$$CustomerPointModelImplCopyWith(
    _$CustomerPointModelImpl value,
    $Res Function(_$CustomerPointModelImpl) then,
  ) = __$$CustomerPointModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'actual_class', defaultValue: 0) int actualClass,
    @JsonKey(name: 'age', defaultValue: 0) double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0) double estimatedSalary,
    @JsonKey(name: 'point_color', defaultValue: '') String pointColor,
  });
}

/// @nodoc
class __$$CustomerPointModelImplCopyWithImpl<$Res>
    extends _$CustomerPointModelCopyWithImpl<$Res, _$CustomerPointModelImpl>
    implements _$$CustomerPointModelImplCopyWith<$Res> {
  __$$CustomerPointModelImplCopyWithImpl(
    _$CustomerPointModelImpl _value,
    $Res Function(_$CustomerPointModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerPointModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actualClass = null,
    Object? age = null,
    Object? estimatedSalary = null,
    Object? pointColor = null,
  }) {
    return _then(
      _$CustomerPointModelImpl(
        actualClass: null == actualClass
            ? _value.actualClass
            : actualClass // ignore: cast_nullable_to_non_nullable
                  as int,
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerPointModelImpl extends _CustomerPointModel {
  const _$CustomerPointModelImpl({
    @JsonKey(name: 'actual_class', defaultValue: 0) required this.actualClass,
    @JsonKey(name: 'age', defaultValue: 0) required this.age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required this.estimatedSalary,
    @JsonKey(name: 'point_color', defaultValue: '') required this.pointColor,
  }) : super._();

  factory _$CustomerPointModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerPointModelImplFromJson(json);

  @override
  @JsonKey(name: 'actual_class', defaultValue: 0)
  final int actualClass;
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
  String toString() {
    return 'CustomerPointModel(actualClass: $actualClass, age: $age, estimatedSalary: $estimatedSalary, pointColor: $pointColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerPointModelImpl &&
            (identical(other.actualClass, actualClass) ||
                other.actualClass == actualClass) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.estimatedSalary, estimatedSalary) ||
                other.estimatedSalary == estimatedSalary) &&
            (identical(other.pointColor, pointColor) ||
                other.pointColor == pointColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, actualClass, age, estimatedSalary, pointColor);

  /// Create a copy of CustomerPointModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerPointModelImplCopyWith<_$CustomerPointModelImpl> get copyWith =>
      __$$CustomerPointModelImplCopyWithImpl<_$CustomerPointModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerPointModelImplToJson(this);
  }
}

abstract class _CustomerPointModel extends CustomerPointModel {
  const factory _CustomerPointModel({
    @JsonKey(name: 'actual_class', defaultValue: 0)
    required final int actualClass,
    @JsonKey(name: 'age', defaultValue: 0) required final double age,
    @JsonKey(name: 'estimated_salary', defaultValue: 0)
    required final double estimatedSalary,
    @JsonKey(name: 'point_color', defaultValue: '')
    required final String pointColor,
  }) = _$CustomerPointModelImpl;
  const _CustomerPointModel._() : super._();

  factory _CustomerPointModel.fromJson(Map<String, dynamic> json) =
      _$CustomerPointModelImpl.fromJson;

  @override
  @JsonKey(name: 'actual_class', defaultValue: 0)
  int get actualClass;
  @override
  @JsonKey(name: 'age', defaultValue: 0)
  double get age;
  @override
  @JsonKey(name: 'estimated_salary', defaultValue: 0)
  double get estimatedSalary;
  @override
  @JsonKey(name: 'point_color', defaultValue: '')
  String get pointColor;

  /// Create a copy of CustomerPointModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerPointModelImplCopyWith<_$CustomerPointModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
