// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<User> dataList) success,
    required TResult Function() formLoading,
    required TResult Function(String message) formError,
    required TResult Function() formSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<User> dataList)? success,
    TResult? Function()? formLoading,
    TResult? Function(String message)? formError,
    TResult? Function()? formSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<User> dataList)? success,
    TResult Function()? formLoading,
    TResult Function(String message)? formError,
    TResult Function()? formSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UsersListLoading value) loading,
    required TResult Function(UsersListError value) error,
    required TResult Function(UsersListSuccess value) success,
    required TResult Function(UsersFormLoading value) formLoading,
    required TResult Function(UserFormError value) formError,
    required TResult Function(UserFormSuccess value) formSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UsersListLoading value)? loading,
    TResult? Function(UsersListError value)? error,
    TResult? Function(UsersListSuccess value)? success,
    TResult? Function(UsersFormLoading value)? formLoading,
    TResult? Function(UserFormError value)? formError,
    TResult? Function(UserFormSuccess value)? formSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UsersListLoading value)? loading,
    TResult Function(UsersListError value)? error,
    TResult Function(UsersListSuccess value)? success,
    TResult Function(UsersFormLoading value)? formLoading,
    TResult Function(UserFormError value)? formError,
    TResult Function(UserFormSuccess value)? formSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res, UsersState>;
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res, $Val extends UsersState>
    implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

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
    extends _$UsersStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UsersState.initial()';
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
    required TResult Function(List<User> dataList) success,
    required TResult Function() formLoading,
    required TResult Function(String message) formError,
    required TResult Function() formSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<User> dataList)? success,
    TResult? Function()? formLoading,
    TResult? Function(String message)? formError,
    TResult? Function()? formSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<User> dataList)? success,
    TResult Function()? formLoading,
    TResult Function(String message)? formError,
    TResult Function()? formSuccess,
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
    required TResult Function(UsersListLoading value) loading,
    required TResult Function(UsersListError value) error,
    required TResult Function(UsersListSuccess value) success,
    required TResult Function(UsersFormLoading value) formLoading,
    required TResult Function(UserFormError value) formError,
    required TResult Function(UserFormSuccess value) formSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UsersListLoading value)? loading,
    TResult? Function(UsersListError value)? error,
    TResult? Function(UsersListSuccess value)? success,
    TResult? Function(UsersFormLoading value)? formLoading,
    TResult? Function(UserFormError value)? formError,
    TResult? Function(UserFormSuccess value)? formSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UsersListLoading value)? loading,
    TResult Function(UsersListError value)? error,
    TResult Function(UsersListSuccess value)? success,
    TResult Function(UsersFormLoading value)? formLoading,
    TResult Function(UserFormError value)? formError,
    TResult Function(UserFormSuccess value)? formSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UsersState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UsersListLoadingImplCopyWith<$Res> {
  factory _$$UsersListLoadingImplCopyWith(_$UsersListLoadingImpl value,
          $Res Function(_$UsersListLoadingImpl) then) =
      __$$UsersListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsersListLoadingImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$UsersListLoadingImpl>
    implements _$$UsersListLoadingImplCopyWith<$Res> {
  __$$UsersListLoadingImplCopyWithImpl(_$UsersListLoadingImpl _value,
      $Res Function(_$UsersListLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UsersListLoadingImpl implements UsersListLoading {
  const _$UsersListLoadingImpl();

  @override
  String toString() {
    return 'UsersState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UsersListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<User> dataList) success,
    required TResult Function() formLoading,
    required TResult Function(String message) formError,
    required TResult Function() formSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<User> dataList)? success,
    TResult? Function()? formLoading,
    TResult? Function(String message)? formError,
    TResult? Function()? formSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<User> dataList)? success,
    TResult Function()? formLoading,
    TResult Function(String message)? formError,
    TResult Function()? formSuccess,
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
    required TResult Function(UsersListLoading value) loading,
    required TResult Function(UsersListError value) error,
    required TResult Function(UsersListSuccess value) success,
    required TResult Function(UsersFormLoading value) formLoading,
    required TResult Function(UserFormError value) formError,
    required TResult Function(UserFormSuccess value) formSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UsersListLoading value)? loading,
    TResult? Function(UsersListError value)? error,
    TResult? Function(UsersListSuccess value)? success,
    TResult? Function(UsersFormLoading value)? formLoading,
    TResult? Function(UserFormError value)? formError,
    TResult? Function(UserFormSuccess value)? formSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UsersListLoading value)? loading,
    TResult Function(UsersListError value)? error,
    TResult Function(UsersListSuccess value)? success,
    TResult Function(UsersFormLoading value)? formLoading,
    TResult Function(UserFormError value)? formError,
    TResult Function(UserFormSuccess value)? formSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UsersListLoading implements UsersState {
  const factory UsersListLoading() = _$UsersListLoadingImpl;
}

/// @nodoc
abstract class _$$UsersListErrorImplCopyWith<$Res> {
  factory _$$UsersListErrorImplCopyWith(_$UsersListErrorImpl value,
          $Res Function(_$UsersListErrorImpl) then) =
      __$$UsersListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UsersListErrorImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$UsersListErrorImpl>
    implements _$$UsersListErrorImplCopyWith<$Res> {
  __$$UsersListErrorImplCopyWithImpl(
      _$UsersListErrorImpl _value, $Res Function(_$UsersListErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UsersListErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsersListErrorImpl implements UsersListError {
  const _$UsersListErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'UsersState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersListErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersListErrorImplCopyWith<_$UsersListErrorImpl> get copyWith =>
      __$$UsersListErrorImplCopyWithImpl<_$UsersListErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<User> dataList) success,
    required TResult Function() formLoading,
    required TResult Function(String message) formError,
    required TResult Function() formSuccess,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<User> dataList)? success,
    TResult? Function()? formLoading,
    TResult? Function(String message)? formError,
    TResult? Function()? formSuccess,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<User> dataList)? success,
    TResult Function()? formLoading,
    TResult Function(String message)? formError,
    TResult Function()? formSuccess,
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
    required TResult Function(UsersListLoading value) loading,
    required TResult Function(UsersListError value) error,
    required TResult Function(UsersListSuccess value) success,
    required TResult Function(UsersFormLoading value) formLoading,
    required TResult Function(UserFormError value) formError,
    required TResult Function(UserFormSuccess value) formSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UsersListLoading value)? loading,
    TResult? Function(UsersListError value)? error,
    TResult? Function(UsersListSuccess value)? success,
    TResult? Function(UsersFormLoading value)? formLoading,
    TResult? Function(UserFormError value)? formError,
    TResult? Function(UserFormSuccess value)? formSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UsersListLoading value)? loading,
    TResult Function(UsersListError value)? error,
    TResult Function(UsersListSuccess value)? success,
    TResult Function(UsersFormLoading value)? formLoading,
    TResult Function(UserFormError value)? formError,
    TResult Function(UserFormSuccess value)? formSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UsersListError implements UsersState {
  const factory UsersListError({required final String message}) =
      _$UsersListErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$UsersListErrorImplCopyWith<_$UsersListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsersListSuccessImplCopyWith<$Res> {
  factory _$$UsersListSuccessImplCopyWith(_$UsersListSuccessImpl value,
          $Res Function(_$UsersListSuccessImpl) then) =
      __$$UsersListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<User> dataList});
}

/// @nodoc
class __$$UsersListSuccessImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$UsersListSuccessImpl>
    implements _$$UsersListSuccessImplCopyWith<$Res> {
  __$$UsersListSuccessImplCopyWithImpl(_$UsersListSuccessImpl _value,
      $Res Function(_$UsersListSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataList = null,
  }) {
    return _then(_$UsersListSuccessImpl(
      dataList: null == dataList
          ? _value._dataList
          : dataList // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$UsersListSuccessImpl implements UsersListSuccess {
  const _$UsersListSuccessImpl({final List<User> dataList = const []})
      : _dataList = dataList;

  final List<User> _dataList;
  @override
  @JsonKey()
  List<User> get dataList {
    if (_dataList is EqualUnmodifiableListView) return _dataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataList);
  }

  @override
  String toString() {
    return 'UsersState.success(dataList: $dataList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersListSuccessImpl &&
            const DeepCollectionEquality().equals(other._dataList, _dataList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_dataList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersListSuccessImplCopyWith<_$UsersListSuccessImpl> get copyWith =>
      __$$UsersListSuccessImplCopyWithImpl<_$UsersListSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<User> dataList) success,
    required TResult Function() formLoading,
    required TResult Function(String message) formError,
    required TResult Function() formSuccess,
  }) {
    return success(dataList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<User> dataList)? success,
    TResult? Function()? formLoading,
    TResult? Function(String message)? formError,
    TResult? Function()? formSuccess,
  }) {
    return success?.call(dataList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<User> dataList)? success,
    TResult Function()? formLoading,
    TResult Function(String message)? formError,
    TResult Function()? formSuccess,
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
    required TResult Function(UsersListLoading value) loading,
    required TResult Function(UsersListError value) error,
    required TResult Function(UsersListSuccess value) success,
    required TResult Function(UsersFormLoading value) formLoading,
    required TResult Function(UserFormError value) formError,
    required TResult Function(UserFormSuccess value) formSuccess,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UsersListLoading value)? loading,
    TResult? Function(UsersListError value)? error,
    TResult? Function(UsersListSuccess value)? success,
    TResult? Function(UsersFormLoading value)? formLoading,
    TResult? Function(UserFormError value)? formError,
    TResult? Function(UserFormSuccess value)? formSuccess,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UsersListLoading value)? loading,
    TResult Function(UsersListError value)? error,
    TResult Function(UsersListSuccess value)? success,
    TResult Function(UsersFormLoading value)? formLoading,
    TResult Function(UserFormError value)? formError,
    TResult Function(UserFormSuccess value)? formSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UsersListSuccess implements UsersState {
  const factory UsersListSuccess({final List<User> dataList}) =
      _$UsersListSuccessImpl;

  List<User> get dataList;
  @JsonKey(ignore: true)
  _$$UsersListSuccessImplCopyWith<_$UsersListSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsersFormLoadingImplCopyWith<$Res> {
  factory _$$UsersFormLoadingImplCopyWith(_$UsersFormLoadingImpl value,
          $Res Function(_$UsersFormLoadingImpl) then) =
      __$$UsersFormLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsersFormLoadingImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$UsersFormLoadingImpl>
    implements _$$UsersFormLoadingImplCopyWith<$Res> {
  __$$UsersFormLoadingImplCopyWithImpl(_$UsersFormLoadingImpl _value,
      $Res Function(_$UsersFormLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UsersFormLoadingImpl implements UsersFormLoading {
  const _$UsersFormLoadingImpl();

  @override
  String toString() {
    return 'UsersState.formLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UsersFormLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<User> dataList) success,
    required TResult Function() formLoading,
    required TResult Function(String message) formError,
    required TResult Function() formSuccess,
  }) {
    return formLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<User> dataList)? success,
    TResult? Function()? formLoading,
    TResult? Function(String message)? formError,
    TResult? Function()? formSuccess,
  }) {
    return formLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<User> dataList)? success,
    TResult Function()? formLoading,
    TResult Function(String message)? formError,
    TResult Function()? formSuccess,
    required TResult orElse(),
  }) {
    if (formLoading != null) {
      return formLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UsersListLoading value) loading,
    required TResult Function(UsersListError value) error,
    required TResult Function(UsersListSuccess value) success,
    required TResult Function(UsersFormLoading value) formLoading,
    required TResult Function(UserFormError value) formError,
    required TResult Function(UserFormSuccess value) formSuccess,
  }) {
    return formLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UsersListLoading value)? loading,
    TResult? Function(UsersListError value)? error,
    TResult? Function(UsersListSuccess value)? success,
    TResult? Function(UsersFormLoading value)? formLoading,
    TResult? Function(UserFormError value)? formError,
    TResult? Function(UserFormSuccess value)? formSuccess,
  }) {
    return formLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UsersListLoading value)? loading,
    TResult Function(UsersListError value)? error,
    TResult Function(UsersListSuccess value)? success,
    TResult Function(UsersFormLoading value)? formLoading,
    TResult Function(UserFormError value)? formError,
    TResult Function(UserFormSuccess value)? formSuccess,
    required TResult orElse(),
  }) {
    if (formLoading != null) {
      return formLoading(this);
    }
    return orElse();
  }
}

abstract class UsersFormLoading implements UsersState {
  const factory UsersFormLoading() = _$UsersFormLoadingImpl;
}

/// @nodoc
abstract class _$$UserFormErrorImplCopyWith<$Res> {
  factory _$$UserFormErrorImplCopyWith(
          _$UserFormErrorImpl value, $Res Function(_$UserFormErrorImpl) then) =
      __$$UserFormErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UserFormErrorImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$UserFormErrorImpl>
    implements _$$UserFormErrorImplCopyWith<$Res> {
  __$$UserFormErrorImplCopyWithImpl(
      _$UserFormErrorImpl _value, $Res Function(_$UserFormErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UserFormErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserFormErrorImpl implements UserFormError {
  const _$UserFormErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'UsersState.formError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFormErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFormErrorImplCopyWith<_$UserFormErrorImpl> get copyWith =>
      __$$UserFormErrorImplCopyWithImpl<_$UserFormErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<User> dataList) success,
    required TResult Function() formLoading,
    required TResult Function(String message) formError,
    required TResult Function() formSuccess,
  }) {
    return formError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<User> dataList)? success,
    TResult? Function()? formLoading,
    TResult? Function(String message)? formError,
    TResult? Function()? formSuccess,
  }) {
    return formError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<User> dataList)? success,
    TResult Function()? formLoading,
    TResult Function(String message)? formError,
    TResult Function()? formSuccess,
    required TResult orElse(),
  }) {
    if (formError != null) {
      return formError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UsersListLoading value) loading,
    required TResult Function(UsersListError value) error,
    required TResult Function(UsersListSuccess value) success,
    required TResult Function(UsersFormLoading value) formLoading,
    required TResult Function(UserFormError value) formError,
    required TResult Function(UserFormSuccess value) formSuccess,
  }) {
    return formError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UsersListLoading value)? loading,
    TResult? Function(UsersListError value)? error,
    TResult? Function(UsersListSuccess value)? success,
    TResult? Function(UsersFormLoading value)? formLoading,
    TResult? Function(UserFormError value)? formError,
    TResult? Function(UserFormSuccess value)? formSuccess,
  }) {
    return formError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UsersListLoading value)? loading,
    TResult Function(UsersListError value)? error,
    TResult Function(UsersListSuccess value)? success,
    TResult Function(UsersFormLoading value)? formLoading,
    TResult Function(UserFormError value)? formError,
    TResult Function(UserFormSuccess value)? formSuccess,
    required TResult orElse(),
  }) {
    if (formError != null) {
      return formError(this);
    }
    return orElse();
  }
}

abstract class UserFormError implements UsersState {
  const factory UserFormError({required final String message}) =
      _$UserFormErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$UserFormErrorImplCopyWith<_$UserFormErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserFormSuccessImplCopyWith<$Res> {
  factory _$$UserFormSuccessImplCopyWith(_$UserFormSuccessImpl value,
          $Res Function(_$UserFormSuccessImpl) then) =
      __$$UserFormSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserFormSuccessImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$UserFormSuccessImpl>
    implements _$$UserFormSuccessImplCopyWith<$Res> {
  __$$UserFormSuccessImplCopyWithImpl(
      _$UserFormSuccessImpl _value, $Res Function(_$UserFormSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserFormSuccessImpl implements UserFormSuccess {
  const _$UserFormSuccessImpl();

  @override
  String toString() {
    return 'UsersState.formSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserFormSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<User> dataList) success,
    required TResult Function() formLoading,
    required TResult Function(String message) formError,
    required TResult Function() formSuccess,
  }) {
    return formSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<User> dataList)? success,
    TResult? Function()? formLoading,
    TResult? Function(String message)? formError,
    TResult? Function()? formSuccess,
  }) {
    return formSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<User> dataList)? success,
    TResult Function()? formLoading,
    TResult Function(String message)? formError,
    TResult Function()? formSuccess,
    required TResult orElse(),
  }) {
    if (formSuccess != null) {
      return formSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UsersListLoading value) loading,
    required TResult Function(UsersListError value) error,
    required TResult Function(UsersListSuccess value) success,
    required TResult Function(UsersFormLoading value) formLoading,
    required TResult Function(UserFormError value) formError,
    required TResult Function(UserFormSuccess value) formSuccess,
  }) {
    return formSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UsersListLoading value)? loading,
    TResult? Function(UsersListError value)? error,
    TResult? Function(UsersListSuccess value)? success,
    TResult? Function(UsersFormLoading value)? formLoading,
    TResult? Function(UserFormError value)? formError,
    TResult? Function(UserFormSuccess value)? formSuccess,
  }) {
    return formSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UsersListLoading value)? loading,
    TResult Function(UsersListError value)? error,
    TResult Function(UsersListSuccess value)? success,
    TResult Function(UsersFormLoading value)? formLoading,
    TResult Function(UserFormError value)? formError,
    TResult Function(UserFormSuccess value)? formSuccess,
    required TResult orElse(),
  }) {
    if (formSuccess != null) {
      return formSuccess(this);
    }
    return orElse();
  }
}

abstract class UserFormSuccess implements UsersState {
  const factory UserFormSuccess() = _$UserFormSuccessImpl;
}
