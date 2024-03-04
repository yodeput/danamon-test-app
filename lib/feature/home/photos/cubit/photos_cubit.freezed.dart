// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photos_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PhotosState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Photo> dataList) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Photo> dataList)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Photo> dataList)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PhotosLoading value) loading,
    required TResult Function(PhotosError value) error,
    required TResult Function(PhotosSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PhotosLoading value)? loading,
    TResult? Function(PhotosError value)? error,
    TResult? Function(PhotosSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhotosLoading value)? loading,
    TResult Function(PhotosError value)? error,
    TResult Function(PhotosSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosStateCopyWith<$Res> {
  factory $PhotosStateCopyWith(
          PhotosState value, $Res Function(PhotosState) then) =
      _$PhotosStateCopyWithImpl<$Res, PhotosState>;
}

/// @nodoc
class _$PhotosStateCopyWithImpl<$Res, $Val extends PhotosState>
    implements $PhotosStateCopyWith<$Res> {
  _$PhotosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  _$InitialImpl();

  @override
  String toString() {
    return 'PhotosState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Photo> dataList) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Photo> dataList)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Photo> dataList)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PhotosLoading value) loading,
    required TResult Function(PhotosError value) error,
    required TResult Function(PhotosSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PhotosLoading value)? loading,
    TResult? Function(PhotosError value)? error,
    TResult? Function(PhotosSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhotosLoading value)? loading,
    TResult Function(PhotosError value)? error,
    TResult Function(PhotosSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PhotosState {
  factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PhotosLoadingImplCopyWith<$Res> {
  factory _$$PhotosLoadingImplCopyWith(
          _$PhotosLoadingImpl value, $Res Function(_$PhotosLoadingImpl) then) =
      __$$PhotosLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PhotosLoadingImplCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res, _$PhotosLoadingImpl>
    implements _$$PhotosLoadingImplCopyWith<$Res> {
  __$$PhotosLoadingImplCopyWithImpl(
      _$PhotosLoadingImpl _value, $Res Function(_$PhotosLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PhotosLoadingImpl implements PhotosLoading {
  _$PhotosLoadingImpl();

  @override
  String toString() {
    return 'PhotosState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PhotosLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Photo> dataList) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Photo> dataList)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Photo> dataList)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PhotosLoading value) loading,
    required TResult Function(PhotosError value) error,
    required TResult Function(PhotosSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PhotosLoading value)? loading,
    TResult? Function(PhotosError value)? error,
    TResult? Function(PhotosSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhotosLoading value)? loading,
    TResult Function(PhotosError value)? error,
    TResult Function(PhotosSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PhotosLoading implements PhotosState {
  factory PhotosLoading() = _$PhotosLoadingImpl;
}

/// @nodoc
abstract class _$$PhotosErrorImplCopyWith<$Res> {
  factory _$$PhotosErrorImplCopyWith(
          _$PhotosErrorImpl value, $Res Function(_$PhotosErrorImpl) then) =
      __$$PhotosErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PhotosErrorImplCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res, _$PhotosErrorImpl>
    implements _$$PhotosErrorImplCopyWith<$Res> {
  __$$PhotosErrorImplCopyWithImpl(
      _$PhotosErrorImpl _value, $Res Function(_$PhotosErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PhotosErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhotosErrorImpl implements PhotosError {
  _$PhotosErrorImpl({this.message = ''});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'PhotosState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotosErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotosErrorImplCopyWith<_$PhotosErrorImpl> get copyWith =>
      __$$PhotosErrorImplCopyWithImpl<_$PhotosErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Photo> dataList) success,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Photo> dataList)? success,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Photo> dataList)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PhotosLoading value) loading,
    required TResult Function(PhotosError value) error,
    required TResult Function(PhotosSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PhotosLoading value)? loading,
    TResult? Function(PhotosError value)? error,
    TResult? Function(PhotosSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhotosLoading value)? loading,
    TResult Function(PhotosError value)? error,
    TResult Function(PhotosSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PhotosError implements PhotosState {
  factory PhotosError({final String message}) = _$PhotosErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$PhotosErrorImplCopyWith<_$PhotosErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhotosSuccessImplCopyWith<$Res> {
  factory _$$PhotosSuccessImplCopyWith(
          _$PhotosSuccessImpl value, $Res Function(_$PhotosSuccessImpl) then) =
      __$$PhotosSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Photo> dataList});
}

/// @nodoc
class __$$PhotosSuccessImplCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res, _$PhotosSuccessImpl>
    implements _$$PhotosSuccessImplCopyWith<$Res> {
  __$$PhotosSuccessImplCopyWithImpl(
      _$PhotosSuccessImpl _value, $Res Function(_$PhotosSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataList = null,
  }) {
    return _then(_$PhotosSuccessImpl(
      dataList: null == dataList
          ? _value._dataList
          : dataList // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc

class _$PhotosSuccessImpl implements PhotosSuccess {
  _$PhotosSuccessImpl({final List<Photo> dataList = const []})
      : _dataList = dataList;

  final List<Photo> _dataList;
  @override
  @JsonKey()
  List<Photo> get dataList {
    if (_dataList is EqualUnmodifiableListView) return _dataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataList);
  }

  @override
  String toString() {
    return 'PhotosState.success(dataList: $dataList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotosSuccessImpl &&
            const DeepCollectionEquality().equals(other._dataList, _dataList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_dataList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotosSuccessImplCopyWith<_$PhotosSuccessImpl> get copyWith =>
      __$$PhotosSuccessImplCopyWithImpl<_$PhotosSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Photo> dataList) success,
  }) {
    return success(dataList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Photo> dataList)? success,
  }) {
    return success?.call(dataList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Photo> dataList)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(dataList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PhotosLoading value) loading,
    required TResult Function(PhotosError value) error,
    required TResult Function(PhotosSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PhotosLoading value)? loading,
    TResult? Function(PhotosError value)? error,
    TResult? Function(PhotosSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PhotosLoading value)? loading,
    TResult Function(PhotosError value)? error,
    TResult Function(PhotosSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PhotosSuccess implements PhotosState {
  factory PhotosSuccess({final List<Photo> dataList}) = _$PhotosSuccessImpl;

  List<Photo> get dataList;
  @JsonKey(ignore: true)
  _$$PhotosSuccessImplCopyWith<_$PhotosSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
