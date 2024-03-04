// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseMap _$BaseResponseMapFromJson(Map<String, dynamic> json) {
  return _BaseResponseMap.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseMap {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseResponseMapCopyWith<BaseResponseMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseMapCopyWith<$Res> {
  factory $BaseResponseMapCopyWith(
          BaseResponseMap value, $Res Function(BaseResponseMap) then) =
      _$BaseResponseMapCopyWithImpl<$Res, BaseResponseMap>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') Map<String, dynamic>? data});
}

/// @nodoc
class _$BaseResponseMapCopyWithImpl<$Res, $Val extends BaseResponseMap>
    implements $BaseResponseMapCopyWith<$Res> {
  _$BaseResponseMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseMapImplCopyWith<$Res>
    implements $BaseResponseMapCopyWith<$Res> {
  factory _$$BaseResponseMapImplCopyWith(_$BaseResponseMapImpl value,
          $Res Function(_$BaseResponseMapImpl) then) =
      __$$BaseResponseMapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') Map<String, dynamic>? data});
}

/// @nodoc
class __$$BaseResponseMapImplCopyWithImpl<$Res>
    extends _$BaseResponseMapCopyWithImpl<$Res, _$BaseResponseMapImpl>
    implements _$$BaseResponseMapImplCopyWith<$Res> {
  __$$BaseResponseMapImplCopyWithImpl(
      _$BaseResponseMapImpl _value, $Res Function(_$BaseResponseMapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseMapImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResponseMapImpl implements _BaseResponseMap {
  const _$BaseResponseMapImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final Map<String, dynamic>? data})
      : _data = data;

  factory _$BaseResponseMapImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseResponseMapImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final Map<String, dynamic>? _data;
  @override
  @JsonKey(name: 'data')
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'BaseResponseMap(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseMapImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseMapImplCopyWith<_$BaseResponseMapImpl> get copyWith =>
      __$$BaseResponseMapImplCopyWithImpl<_$BaseResponseMapImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseMapImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseMap implements BaseResponseMap {
  const factory _BaseResponseMap(
          {@JsonKey(name: 'status') final bool? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final Map<String, dynamic>? data}) =
      _$BaseResponseMapImpl;

  factory _BaseResponseMap.fromJson(Map<String, dynamic> json) =
      _$BaseResponseMapImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  Map<String, dynamic>? get data;
  @override
  @JsonKey(ignore: true)
  _$$BaseResponseMapImplCopyWith<_$BaseResponseMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
