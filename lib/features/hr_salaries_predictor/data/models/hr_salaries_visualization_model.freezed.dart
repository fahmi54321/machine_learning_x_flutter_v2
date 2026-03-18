// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hr_salaries_visualization_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HrSalariesVisualizationModel _$HrSalariesVisualizationModelFromJson(
  Map<String, dynamic> json,
) {
  return _HrSalariesVisualizationModel.fromJson(json);
}

/// @nodoc
mixin _$HrSalariesVisualizationModel {
  @JsonKey(name: 'curve', defaultValue: [])
  List<HrSalariesPointModel> get curve => throw _privateConstructorUsedError;
  @JsonKey(name: 'real_data', defaultValue: [])
  List<HrSalariesPointModel> get realData => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_point')
  HrSalariesPointModel? get userPoint => throw _privateConstructorUsedError;

  /// Serializes this HrSalariesVisualizationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HrSalariesVisualizationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HrSalariesVisualizationModelCopyWith<HrSalariesVisualizationModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HrSalariesVisualizationModelCopyWith<$Res> {
  factory $HrSalariesVisualizationModelCopyWith(
    HrSalariesVisualizationModel value,
    $Res Function(HrSalariesVisualizationModel) then,
  ) =
      _$HrSalariesVisualizationModelCopyWithImpl<
        $Res,
        HrSalariesVisualizationModel
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'curve', defaultValue: []) List<HrSalariesPointModel> curve,
    @JsonKey(name: 'real_data', defaultValue: [])
    List<HrSalariesPointModel> realData,
    @JsonKey(name: 'user_point') HrSalariesPointModel? userPoint,
  });

  $HrSalariesPointModelCopyWith<$Res>? get userPoint;
}

/// @nodoc
class _$HrSalariesVisualizationModelCopyWithImpl<
  $Res,
  $Val extends HrSalariesVisualizationModel
>
    implements $HrSalariesVisualizationModelCopyWith<$Res> {
  _$HrSalariesVisualizationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HrSalariesVisualizationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? curve = null,
    Object? realData = null,
    Object? userPoint = freezed,
  }) {
    return _then(
      _value.copyWith(
            curve: null == curve
                ? _value.curve
                : curve // ignore: cast_nullable_to_non_nullable
                      as List<HrSalariesPointModel>,
            realData: null == realData
                ? _value.realData
                : realData // ignore: cast_nullable_to_non_nullable
                      as List<HrSalariesPointModel>,
            userPoint: freezed == userPoint
                ? _value.userPoint
                : userPoint // ignore: cast_nullable_to_non_nullable
                      as HrSalariesPointModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of HrSalariesVisualizationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HrSalariesPointModelCopyWith<$Res>? get userPoint {
    if (_value.userPoint == null) {
      return null;
    }

    return $HrSalariesPointModelCopyWith<$Res>(_value.userPoint!, (value) {
      return _then(_value.copyWith(userPoint: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HrSalariesVisualizationModelImplCopyWith<$Res>
    implements $HrSalariesVisualizationModelCopyWith<$Res> {
  factory _$$HrSalariesVisualizationModelImplCopyWith(
    _$HrSalariesVisualizationModelImpl value,
    $Res Function(_$HrSalariesVisualizationModelImpl) then,
  ) = __$$HrSalariesVisualizationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'curve', defaultValue: []) List<HrSalariesPointModel> curve,
    @JsonKey(name: 'real_data', defaultValue: [])
    List<HrSalariesPointModel> realData,
    @JsonKey(name: 'user_point') HrSalariesPointModel? userPoint,
  });

  @override
  $HrSalariesPointModelCopyWith<$Res>? get userPoint;
}

/// @nodoc
class __$$HrSalariesVisualizationModelImplCopyWithImpl<$Res>
    extends
        _$HrSalariesVisualizationModelCopyWithImpl<
          $Res,
          _$HrSalariesVisualizationModelImpl
        >
    implements _$$HrSalariesVisualizationModelImplCopyWith<$Res> {
  __$$HrSalariesVisualizationModelImplCopyWithImpl(
    _$HrSalariesVisualizationModelImpl _value,
    $Res Function(_$HrSalariesVisualizationModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HrSalariesVisualizationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? curve = null,
    Object? realData = null,
    Object? userPoint = freezed,
  }) {
    return _then(
      _$HrSalariesVisualizationModelImpl(
        curve: null == curve
            ? _value._curve
            : curve // ignore: cast_nullable_to_non_nullable
                  as List<HrSalariesPointModel>,
        realData: null == realData
            ? _value._realData
            : realData // ignore: cast_nullable_to_non_nullable
                  as List<HrSalariesPointModel>,
        userPoint: freezed == userPoint
            ? _value.userPoint
            : userPoint // ignore: cast_nullable_to_non_nullable
                  as HrSalariesPointModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HrSalariesVisualizationModelImpl extends _HrSalariesVisualizationModel {
  const _$HrSalariesVisualizationModelImpl({
    @JsonKey(name: 'curve', defaultValue: [])
    required final List<HrSalariesPointModel> curve,
    @JsonKey(name: 'real_data', defaultValue: [])
    required final List<HrSalariesPointModel> realData,
    @JsonKey(name: 'user_point') required this.userPoint,
  }) : _curve = curve,
       _realData = realData,
       super._();

  factory _$HrSalariesVisualizationModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$HrSalariesVisualizationModelImplFromJson(json);

  final List<HrSalariesPointModel> _curve;
  @override
  @JsonKey(name: 'curve', defaultValue: [])
  List<HrSalariesPointModel> get curve {
    if (_curve is EqualUnmodifiableListView) return _curve;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_curve);
  }

  final List<HrSalariesPointModel> _realData;
  @override
  @JsonKey(name: 'real_data', defaultValue: [])
  List<HrSalariesPointModel> get realData {
    if (_realData is EqualUnmodifiableListView) return _realData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_realData);
  }

  @override
  @JsonKey(name: 'user_point')
  final HrSalariesPointModel? userPoint;

  @override
  String toString() {
    return 'HrSalariesVisualizationModel(curve: $curve, realData: $realData, userPoint: $userPoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HrSalariesVisualizationModelImpl &&
            const DeepCollectionEquality().equals(other._curve, _curve) &&
            const DeepCollectionEquality().equals(other._realData, _realData) &&
            (identical(other.userPoint, userPoint) ||
                other.userPoint == userPoint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_curve),
    const DeepCollectionEquality().hash(_realData),
    userPoint,
  );

  /// Create a copy of HrSalariesVisualizationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HrSalariesVisualizationModelImplCopyWith<
    _$HrSalariesVisualizationModelImpl
  >
  get copyWith =>
      __$$HrSalariesVisualizationModelImplCopyWithImpl<
        _$HrSalariesVisualizationModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HrSalariesVisualizationModelImplToJson(this);
  }
}

abstract class _HrSalariesVisualizationModel
    extends HrSalariesVisualizationModel {
  const factory _HrSalariesVisualizationModel({
    @JsonKey(name: 'curve', defaultValue: [])
    required final List<HrSalariesPointModel> curve,
    @JsonKey(name: 'real_data', defaultValue: [])
    required final List<HrSalariesPointModel> realData,
    @JsonKey(name: 'user_point') required final HrSalariesPointModel? userPoint,
  }) = _$HrSalariesVisualizationModelImpl;
  const _HrSalariesVisualizationModel._() : super._();

  factory _HrSalariesVisualizationModel.fromJson(Map<String, dynamic> json) =
      _$HrSalariesVisualizationModelImpl.fromJson;

  @override
  @JsonKey(name: 'curve', defaultValue: [])
  List<HrSalariesPointModel> get curve;
  @override
  @JsonKey(name: 'real_data', defaultValue: [])
  List<HrSalariesPointModel> get realData;
  @override
  @JsonKey(name: 'user_point')
  HrSalariesPointModel? get userPoint;

  /// Create a copy of HrSalariesVisualizationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HrSalariesVisualizationModelImplCopyWith<
    _$HrSalariesVisualizationModelImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
