// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hr_salaries_meta_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HrSalariesMetaModel _$HrSalariesMetaModelFromJson(Map<String, dynamic> json) {
  return _HrSalariesMetaModel.fromJson(json);
}

/// @nodoc
mixin _$HrSalariesMetaModel {
  @JsonKey(name: 'model', defaultValue: '')
  String get model => throw _privateConstructorUsedError;
  @JsonKey(name: 'degree', defaultValue: 0)
  int get degree => throw _privateConstructorUsedError;

  /// Serializes this HrSalariesMetaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HrSalariesMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HrSalariesMetaModelCopyWith<HrSalariesMetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HrSalariesMetaModelCopyWith<$Res> {
  factory $HrSalariesMetaModelCopyWith(
    HrSalariesMetaModel value,
    $Res Function(HrSalariesMetaModel) then,
  ) = _$HrSalariesMetaModelCopyWithImpl<$Res, HrSalariesMetaModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'model', defaultValue: '') String model,
    @JsonKey(name: 'degree', defaultValue: 0) int degree,
  });
}

/// @nodoc
class _$HrSalariesMetaModelCopyWithImpl<$Res, $Val extends HrSalariesMetaModel>
    implements $HrSalariesMetaModelCopyWith<$Res> {
  _$HrSalariesMetaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HrSalariesMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? model = null, Object? degree = null}) {
    return _then(
      _value.copyWith(
            model: null == model
                ? _value.model
                : model // ignore: cast_nullable_to_non_nullable
                      as String,
            degree: null == degree
                ? _value.degree
                : degree // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HrSalariesMetaModelImplCopyWith<$Res>
    implements $HrSalariesMetaModelCopyWith<$Res> {
  factory _$$HrSalariesMetaModelImplCopyWith(
    _$HrSalariesMetaModelImpl value,
    $Res Function(_$HrSalariesMetaModelImpl) then,
  ) = __$$HrSalariesMetaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'model', defaultValue: '') String model,
    @JsonKey(name: 'degree', defaultValue: 0) int degree,
  });
}

/// @nodoc
class __$$HrSalariesMetaModelImplCopyWithImpl<$Res>
    extends _$HrSalariesMetaModelCopyWithImpl<$Res, _$HrSalariesMetaModelImpl>
    implements _$$HrSalariesMetaModelImplCopyWith<$Res> {
  __$$HrSalariesMetaModelImplCopyWithImpl(
    _$HrSalariesMetaModelImpl _value,
    $Res Function(_$HrSalariesMetaModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HrSalariesMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? model = null, Object? degree = null}) {
    return _then(
      _$HrSalariesMetaModelImpl(
        model: null == model
            ? _value.model
            : model // ignore: cast_nullable_to_non_nullable
                  as String,
        degree: null == degree
            ? _value.degree
            : degree // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HrSalariesMetaModelImpl extends _HrSalariesMetaModel {
  const _$HrSalariesMetaModelImpl({
    @JsonKey(name: 'model', defaultValue: '') required this.model,
    @JsonKey(name: 'degree', defaultValue: 0) required this.degree,
  }) : super._();

  factory _$HrSalariesMetaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HrSalariesMetaModelImplFromJson(json);

  @override
  @JsonKey(name: 'model', defaultValue: '')
  final String model;
  @override
  @JsonKey(name: 'degree', defaultValue: 0)
  final int degree;

  @override
  String toString() {
    return 'HrSalariesMetaModel(model: $model, degree: $degree)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HrSalariesMetaModelImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.degree, degree) || other.degree == degree));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, model, degree);

  /// Create a copy of HrSalariesMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HrSalariesMetaModelImplCopyWith<_$HrSalariesMetaModelImpl> get copyWith =>
      __$$HrSalariesMetaModelImplCopyWithImpl<_$HrSalariesMetaModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HrSalariesMetaModelImplToJson(this);
  }
}

abstract class _HrSalariesMetaModel extends HrSalariesMetaModel {
  const factory _HrSalariesMetaModel({
    @JsonKey(name: 'model', defaultValue: '') required final String model,
    @JsonKey(name: 'degree', defaultValue: 0) required final int degree,
  }) = _$HrSalariesMetaModelImpl;
  const _HrSalariesMetaModel._() : super._();

  factory _HrSalariesMetaModel.fromJson(Map<String, dynamic> json) =
      _$HrSalariesMetaModelImpl.fromJson;

  @override
  @JsonKey(name: 'model', defaultValue: '')
  String get model;
  @override
  @JsonKey(name: 'degree', defaultValue: 0)
  int get degree;

  /// Create a copy of HrSalariesMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HrSalariesMetaModelImplCopyWith<_$HrSalariesMetaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
