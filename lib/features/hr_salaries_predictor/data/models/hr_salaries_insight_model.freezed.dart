// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hr_salaries_insight_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HrSalariesInsightModel _$HrSalariesInsightModelFromJson(
  Map<String, dynamic> json,
) {
  return _HrSalariesInsightModel.fromJson(json);
}

/// @nodoc
mixin _$HrSalariesInsightModel {
  @JsonKey(name: 'category', defaultValue: '')
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'confidence_note', defaultValue: '')
  String get confidenceNote => throw _privateConstructorUsedError;
  @JsonKey(name: 'recommendation', defaultValue: '')
  String get recommendation => throw _privateConstructorUsedError;

  /// Serializes this HrSalariesInsightModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HrSalariesInsightModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HrSalariesInsightModelCopyWith<HrSalariesInsightModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HrSalariesInsightModelCopyWith<$Res> {
  factory $HrSalariesInsightModelCopyWith(
    HrSalariesInsightModel value,
    $Res Function(HrSalariesInsightModel) then,
  ) = _$HrSalariesInsightModelCopyWithImpl<$Res, HrSalariesInsightModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'category', defaultValue: '') String category,
    @JsonKey(name: 'confidence_note', defaultValue: '') String confidenceNote,
    @JsonKey(name: 'recommendation', defaultValue: '') String recommendation,
  });
}

/// @nodoc
class _$HrSalariesInsightModelCopyWithImpl<
  $Res,
  $Val extends HrSalariesInsightModel
>
    implements $HrSalariesInsightModelCopyWith<$Res> {
  _$HrSalariesInsightModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HrSalariesInsightModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? confidenceNote = null,
    Object? recommendation = null,
  }) {
    return _then(
      _value.copyWith(
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String,
            confidenceNote: null == confidenceNote
                ? _value.confidenceNote
                : confidenceNote // ignore: cast_nullable_to_non_nullable
                      as String,
            recommendation: null == recommendation
                ? _value.recommendation
                : recommendation // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HrSalariesInsightModelImplCopyWith<$Res>
    implements $HrSalariesInsightModelCopyWith<$Res> {
  factory _$$HrSalariesInsightModelImplCopyWith(
    _$HrSalariesInsightModelImpl value,
    $Res Function(_$HrSalariesInsightModelImpl) then,
  ) = __$$HrSalariesInsightModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'category', defaultValue: '') String category,
    @JsonKey(name: 'confidence_note', defaultValue: '') String confidenceNote,
    @JsonKey(name: 'recommendation', defaultValue: '') String recommendation,
  });
}

/// @nodoc
class __$$HrSalariesInsightModelImplCopyWithImpl<$Res>
    extends
        _$HrSalariesInsightModelCopyWithImpl<$Res, _$HrSalariesInsightModelImpl>
    implements _$$HrSalariesInsightModelImplCopyWith<$Res> {
  __$$HrSalariesInsightModelImplCopyWithImpl(
    _$HrSalariesInsightModelImpl _value,
    $Res Function(_$HrSalariesInsightModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HrSalariesInsightModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? confidenceNote = null,
    Object? recommendation = null,
  }) {
    return _then(
      _$HrSalariesInsightModelImpl(
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String,
        confidenceNote: null == confidenceNote
            ? _value.confidenceNote
            : confidenceNote // ignore: cast_nullable_to_non_nullable
                  as String,
        recommendation: null == recommendation
            ? _value.recommendation
            : recommendation // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HrSalariesInsightModelImpl extends _HrSalariesInsightModel {
  const _$HrSalariesInsightModelImpl({
    @JsonKey(name: 'category', defaultValue: '') required this.category,
    @JsonKey(name: 'confidence_note', defaultValue: '')
    required this.confidenceNote,
    @JsonKey(name: 'recommendation', defaultValue: '')
    required this.recommendation,
  }) : super._();

  factory _$HrSalariesInsightModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HrSalariesInsightModelImplFromJson(json);

  @override
  @JsonKey(name: 'category', defaultValue: '')
  final String category;
  @override
  @JsonKey(name: 'confidence_note', defaultValue: '')
  final String confidenceNote;
  @override
  @JsonKey(name: 'recommendation', defaultValue: '')
  final String recommendation;

  @override
  String toString() {
    return 'HrSalariesInsightModel(category: $category, confidenceNote: $confidenceNote, recommendation: $recommendation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HrSalariesInsightModelImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.confidenceNote, confidenceNote) ||
                other.confidenceNote == confidenceNote) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, category, confidenceNote, recommendation);

  /// Create a copy of HrSalariesInsightModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HrSalariesInsightModelImplCopyWith<_$HrSalariesInsightModelImpl>
  get copyWith =>
      __$$HrSalariesInsightModelImplCopyWithImpl<_$HrSalariesInsightModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HrSalariesInsightModelImplToJson(this);
  }
}

abstract class _HrSalariesInsightModel extends HrSalariesInsightModel {
  const factory _HrSalariesInsightModel({
    @JsonKey(name: 'category', defaultValue: '') required final String category,
    @JsonKey(name: 'confidence_note', defaultValue: '')
    required final String confidenceNote,
    @JsonKey(name: 'recommendation', defaultValue: '')
    required final String recommendation,
  }) = _$HrSalariesInsightModelImpl;
  const _HrSalariesInsightModel._() : super._();

  factory _HrSalariesInsightModel.fromJson(Map<String, dynamic> json) =
      _$HrSalariesInsightModelImpl.fromJson;

  @override
  @JsonKey(name: 'category', defaultValue: '')
  String get category;
  @override
  @JsonKey(name: 'confidence_note', defaultValue: '')
  String get confidenceNote;
  @override
  @JsonKey(name: 'recommendation', defaultValue: '')
  String get recommendation;

  /// Create a copy of HrSalariesInsightModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HrSalariesInsightModelImplCopyWith<_$HrSalariesInsightModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
