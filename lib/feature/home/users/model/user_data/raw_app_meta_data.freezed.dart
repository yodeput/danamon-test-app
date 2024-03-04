// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'raw_app_meta_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RawAppMetaData _$RawAppMetaDataFromJson(Map<String, dynamic> json) {
  return _RawAppMetaData.fromJson(json);
}

/// @nodoc
mixin _$RawAppMetaData {
  String? get provider => throw _privateConstructorUsedError;
  List<String>? get providers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RawAppMetaDataCopyWith<RawAppMetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawAppMetaDataCopyWith<$Res> {
  factory $RawAppMetaDataCopyWith(
          RawAppMetaData value, $Res Function(RawAppMetaData) then) =
      _$RawAppMetaDataCopyWithImpl<$Res, RawAppMetaData>;
  @useResult
  $Res call({String? provider, List<String>? providers});
}

/// @nodoc
class _$RawAppMetaDataCopyWithImpl<$Res, $Val extends RawAppMetaData>
    implements $RawAppMetaDataCopyWith<$Res> {
  _$RawAppMetaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = freezed,
    Object? providers = freezed,
  }) {
    return _then(_value.copyWith(
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      providers: freezed == providers
          ? _value.providers
          : providers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RawAppMetaDataImplCopyWith<$Res>
    implements $RawAppMetaDataCopyWith<$Res> {
  factory _$$RawAppMetaDataImplCopyWith(_$RawAppMetaDataImpl value,
          $Res Function(_$RawAppMetaDataImpl) then) =
      __$$RawAppMetaDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? provider, List<String>? providers});
}

/// @nodoc
class __$$RawAppMetaDataImplCopyWithImpl<$Res>
    extends _$RawAppMetaDataCopyWithImpl<$Res, _$RawAppMetaDataImpl>
    implements _$$RawAppMetaDataImplCopyWith<$Res> {
  __$$RawAppMetaDataImplCopyWithImpl(
      _$RawAppMetaDataImpl _value, $Res Function(_$RawAppMetaDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = freezed,
    Object? providers = freezed,
  }) {
    return _then(_$RawAppMetaDataImpl(
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      providers: freezed == providers
          ? _value._providers
          : providers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RawAppMetaDataImpl implements _RawAppMetaData {
  _$RawAppMetaDataImpl({this.provider, final List<String>? providers})
      : _providers = providers;

  factory _$RawAppMetaDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RawAppMetaDataImplFromJson(json);

  @override
  final String? provider;
  final List<String>? _providers;
  @override
  List<String>? get providers {
    final value = _providers;
    if (value == null) return null;
    if (_providers is EqualUnmodifiableListView) return _providers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RawAppMetaData(provider: $provider, providers: $providers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RawAppMetaDataImpl &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            const DeepCollectionEquality()
                .equals(other._providers, _providers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, provider, const DeepCollectionEquality().hash(_providers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RawAppMetaDataImplCopyWith<_$RawAppMetaDataImpl> get copyWith =>
      __$$RawAppMetaDataImplCopyWithImpl<_$RawAppMetaDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RawAppMetaDataImplToJson(
      this,
    );
  }
}

abstract class _RawAppMetaData implements RawAppMetaData {
  factory _RawAppMetaData(
      {final String? provider,
      final List<String>? providers}) = _$RawAppMetaDataImpl;

  factory _RawAppMetaData.fromJson(Map<String, dynamic> json) =
      _$RawAppMetaDataImpl.fromJson;

  @override
  String? get provider;
  @override
  List<String>? get providers;
  @override
  @JsonKey(ignore: true)
  _$$RawAppMetaDataImplCopyWith<_$RawAppMetaDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
