// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'raw_user_meta_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RawUserMetaData _$RawUserMetaDataFromJson(Map<String, dynamic> json) {
  return _RawUserMetaData.fromJson(json);
}

/// @nodoc
mixin _$RawUserMetaData {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_level')
  String? get accessLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RawUserMetaDataCopyWith<RawUserMetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawUserMetaDataCopyWith<$Res> {
  factory $RawUserMetaDataCopyWith(
          RawUserMetaData value, $Res Function(RawUserMetaData) then) =
      _$RawUserMetaDataCopyWithImpl<$Res, RawUserMetaData>;
  @useResult
  $Res call({String? name, @JsonKey(name: 'access_level') String? accessLevel});
}

/// @nodoc
class _$RawUserMetaDataCopyWithImpl<$Res, $Val extends RawUserMetaData>
    implements $RawUserMetaDataCopyWith<$Res> {
  _$RawUserMetaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? accessLevel = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accessLevel: freezed == accessLevel
          ? _value.accessLevel
          : accessLevel // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RawUserMetaDataImplCopyWith<$Res>
    implements $RawUserMetaDataCopyWith<$Res> {
  factory _$$RawUserMetaDataImplCopyWith(_$RawUserMetaDataImpl value,
          $Res Function(_$RawUserMetaDataImpl) then) =
      __$$RawUserMetaDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, @JsonKey(name: 'access_level') String? accessLevel});
}

/// @nodoc
class __$$RawUserMetaDataImplCopyWithImpl<$Res>
    extends _$RawUserMetaDataCopyWithImpl<$Res, _$RawUserMetaDataImpl>
    implements _$$RawUserMetaDataImplCopyWith<$Res> {
  __$$RawUserMetaDataImplCopyWithImpl(
      _$RawUserMetaDataImpl _value, $Res Function(_$RawUserMetaDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? accessLevel = freezed,
  }) {
    return _then(_$RawUserMetaDataImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accessLevel: freezed == accessLevel
          ? _value.accessLevel
          : accessLevel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RawUserMetaDataImpl implements _RawUserMetaData {
  _$RawUserMetaDataImpl(
      {this.name, @JsonKey(name: 'access_level') this.accessLevel});

  factory _$RawUserMetaDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RawUserMetaDataImplFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: 'access_level')
  final String? accessLevel;

  @override
  String toString() {
    return 'RawUserMetaData(name: $name, accessLevel: $accessLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RawUserMetaDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.accessLevel, accessLevel) ||
                other.accessLevel == accessLevel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, accessLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RawUserMetaDataImplCopyWith<_$RawUserMetaDataImpl> get copyWith =>
      __$$RawUserMetaDataImplCopyWithImpl<_$RawUserMetaDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RawUserMetaDataImplToJson(
      this,
    );
  }
}

abstract class _RawUserMetaData implements RawUserMetaData {
  factory _RawUserMetaData(
          {final String? name,
          @JsonKey(name: 'access_level') final String? accessLevel}) =
      _$RawUserMetaDataImpl;

  factory _RawUserMetaData.fromJson(Map<String, dynamic> json) =
      _$RawUserMetaDataImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: 'access_level')
  String? get accessLevel;
  @override
  @JsonKey(ignore: true)
  _$$RawUserMetaDataImplCopyWith<_$RawUserMetaDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
