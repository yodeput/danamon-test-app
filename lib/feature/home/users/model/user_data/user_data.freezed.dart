// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  @JsonKey(name: 'instance_id')
  String? get instanceId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get aud => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'encrypted_password')
  String? get encryptedPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_confirmed_at')
  String? get emailConfirmedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'invited_at')
  dynamic get invitedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'confirmation_token')
  String? get confirmationToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'confirmation_sent_at')
  dynamic get confirmationSentAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'recovery_token')
  String? get recoveryToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'recovery_sent_at')
  dynamic get recoverySentAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_change_token_new')
  String? get emailChangeTokenNew => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_change')
  String? get emailChange => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_change_sent_at')
  dynamic get emailChangeSentAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_sign_in_at')
  String? get lastSignInAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'raw_app_meta_data')
  RawAppMetaData? get rawAppMetaData => throw _privateConstructorUsedError;
  @JsonKey(name: 'raw_user_meta_data')
  RawUserMetaData? get rawUserMetaData => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_super_admin')
  dynamic get isSuperAdmin => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  dynamic get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_confirmed_at')
  dynamic get phoneConfirmedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_change')
  String? get phoneChange => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_change_token')
  String? get phoneChangeToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_change_sent_at')
  dynamic get phoneChangeSentAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'confirmed_at')
  String? get confirmedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_change_token_current')
  String? get emailChangeTokenCurrent => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_change_confirm_status')
  int? get emailChangeConfirmStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'banned_until')
  dynamic get bannedUntil => throw _privateConstructorUsedError;
  @JsonKey(name: 'reauthentication_token')
  String? get reauthenticationToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'reauthentication_sent_at')
  dynamic get reauthenticationSentAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_sso_user')
  bool? get isSsoUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  dynamic get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'instance_id') String? instanceId,
      String? id,
      String? aud,
      String? role,
      String? email,
      @JsonKey(name: 'encrypted_password') String? encryptedPassword,
      @JsonKey(name: 'email_confirmed_at') String? emailConfirmedAt,
      @JsonKey(name: 'invited_at') dynamic invitedAt,
      @JsonKey(name: 'confirmation_token') String? confirmationToken,
      @JsonKey(name: 'confirmation_sent_at') dynamic confirmationSentAt,
      @JsonKey(name: 'recovery_token') String? recoveryToken,
      @JsonKey(name: 'recovery_sent_at') dynamic recoverySentAt,
      @JsonKey(name: 'email_change_token_new') String? emailChangeTokenNew,
      @JsonKey(name: 'email_change') String? emailChange,
      @JsonKey(name: 'email_change_sent_at') dynamic emailChangeSentAt,
      @JsonKey(name: 'last_sign_in_at') String? lastSignInAt,
      @JsonKey(name: 'raw_app_meta_data') RawAppMetaData? rawAppMetaData,
      @JsonKey(name: 'raw_user_meta_data') RawUserMetaData? rawUserMetaData,
      @JsonKey(name: 'is_super_admin') dynamic isSuperAdmin,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      dynamic phone,
      @JsonKey(name: 'phone_confirmed_at') dynamic phoneConfirmedAt,
      @JsonKey(name: 'phone_change') String? phoneChange,
      @JsonKey(name: 'phone_change_token') String? phoneChangeToken,
      @JsonKey(name: 'phone_change_sent_at') dynamic phoneChangeSentAt,
      @JsonKey(name: 'confirmed_at') String? confirmedAt,
      @JsonKey(name: 'email_change_token_current')
      String? emailChangeTokenCurrent,
      @JsonKey(name: 'email_change_confirm_status')
      int? emailChangeConfirmStatus,
      @JsonKey(name: 'banned_until') dynamic bannedUntil,
      @JsonKey(name: 'reauthentication_token') String? reauthenticationToken,
      @JsonKey(name: 'reauthentication_sent_at') dynamic reauthenticationSentAt,
      @JsonKey(name: 'is_sso_user') bool? isSsoUser,
      @JsonKey(name: 'deleted_at') dynamic deletedAt});

  $RawAppMetaDataCopyWith<$Res>? get rawAppMetaData;
  $RawUserMetaDataCopyWith<$Res>? get rawUserMetaData;
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instanceId = freezed,
    Object? id = freezed,
    Object? aud = freezed,
    Object? role = freezed,
    Object? email = freezed,
    Object? encryptedPassword = freezed,
    Object? emailConfirmedAt = freezed,
    Object? invitedAt = freezed,
    Object? confirmationToken = freezed,
    Object? confirmationSentAt = freezed,
    Object? recoveryToken = freezed,
    Object? recoverySentAt = freezed,
    Object? emailChangeTokenNew = freezed,
    Object? emailChange = freezed,
    Object? emailChangeSentAt = freezed,
    Object? lastSignInAt = freezed,
    Object? rawAppMetaData = freezed,
    Object? rawUserMetaData = freezed,
    Object? isSuperAdmin = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? phone = freezed,
    Object? phoneConfirmedAt = freezed,
    Object? phoneChange = freezed,
    Object? phoneChangeToken = freezed,
    Object? phoneChangeSentAt = freezed,
    Object? confirmedAt = freezed,
    Object? emailChangeTokenCurrent = freezed,
    Object? emailChangeConfirmStatus = freezed,
    Object? bannedUntil = freezed,
    Object? reauthenticationToken = freezed,
    Object? reauthenticationSentAt = freezed,
    Object? isSsoUser = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      instanceId: freezed == instanceId
          ? _value.instanceId
          : instanceId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      aud: freezed == aud
          ? _value.aud
          : aud // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      encryptedPassword: freezed == encryptedPassword
          ? _value.encryptedPassword
          : encryptedPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      emailConfirmedAt: freezed == emailConfirmedAt
          ? _value.emailConfirmedAt
          : emailConfirmedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedAt: freezed == invitedAt
          ? _value.invitedAt
          : invitedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      confirmationToken: freezed == confirmationToken
          ? _value.confirmationToken
          : confirmationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmationSentAt: freezed == confirmationSentAt
          ? _value.confirmationSentAt
          : confirmationSentAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      recoveryToken: freezed == recoveryToken
          ? _value.recoveryToken
          : recoveryToken // ignore: cast_nullable_to_non_nullable
              as String?,
      recoverySentAt: freezed == recoverySentAt
          ? _value.recoverySentAt
          : recoverySentAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      emailChangeTokenNew: freezed == emailChangeTokenNew
          ? _value.emailChangeTokenNew
          : emailChangeTokenNew // ignore: cast_nullable_to_non_nullable
              as String?,
      emailChange: freezed == emailChange
          ? _value.emailChange
          : emailChange // ignore: cast_nullable_to_non_nullable
              as String?,
      emailChangeSentAt: freezed == emailChangeSentAt
          ? _value.emailChangeSentAt
          : emailChangeSentAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastSignInAt: freezed == lastSignInAt
          ? _value.lastSignInAt
          : lastSignInAt // ignore: cast_nullable_to_non_nullable
              as String?,
      rawAppMetaData: freezed == rawAppMetaData
          ? _value.rawAppMetaData
          : rawAppMetaData // ignore: cast_nullable_to_non_nullable
              as RawAppMetaData?,
      rawUserMetaData: freezed == rawUserMetaData
          ? _value.rawUserMetaData
          : rawUserMetaData // ignore: cast_nullable_to_non_nullable
              as RawUserMetaData?,
      isSuperAdmin: freezed == isSuperAdmin
          ? _value.isSuperAdmin
          : isSuperAdmin // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phoneConfirmedAt: freezed == phoneConfirmedAt
          ? _value.phoneConfirmedAt
          : phoneConfirmedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phoneChange: freezed == phoneChange
          ? _value.phoneChange
          : phoneChange // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneChangeToken: freezed == phoneChangeToken
          ? _value.phoneChangeToken
          : phoneChangeToken // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneChangeSentAt: freezed == phoneChangeSentAt
          ? _value.phoneChangeSentAt
          : phoneChangeSentAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      confirmedAt: freezed == confirmedAt
          ? _value.confirmedAt
          : confirmedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      emailChangeTokenCurrent: freezed == emailChangeTokenCurrent
          ? _value.emailChangeTokenCurrent
          : emailChangeTokenCurrent // ignore: cast_nullable_to_non_nullable
              as String?,
      emailChangeConfirmStatus: freezed == emailChangeConfirmStatus
          ? _value.emailChangeConfirmStatus
          : emailChangeConfirmStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      bannedUntil: freezed == bannedUntil
          ? _value.bannedUntil
          : bannedUntil // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reauthenticationToken: freezed == reauthenticationToken
          ? _value.reauthenticationToken
          : reauthenticationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      reauthenticationSentAt: freezed == reauthenticationSentAt
          ? _value.reauthenticationSentAt
          : reauthenticationSentAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isSsoUser: freezed == isSsoUser
          ? _value.isSsoUser
          : isSsoUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RawAppMetaDataCopyWith<$Res>? get rawAppMetaData {
    if (_value.rawAppMetaData == null) {
      return null;
    }

    return $RawAppMetaDataCopyWith<$Res>(_value.rawAppMetaData!, (value) {
      return _then(_value.copyWith(rawAppMetaData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RawUserMetaDataCopyWith<$Res>? get rawUserMetaData {
    if (_value.rawUserMetaData == null) {
      return null;
    }

    return $RawUserMetaDataCopyWith<$Res>(_value.rawUserMetaData!, (value) {
      return _then(_value.copyWith(rawUserMetaData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'instance_id') String? instanceId,
      String? id,
      String? aud,
      String? role,
      String? email,
      @JsonKey(name: 'encrypted_password') String? encryptedPassword,
      @JsonKey(name: 'email_confirmed_at') String? emailConfirmedAt,
      @JsonKey(name: 'invited_at') dynamic invitedAt,
      @JsonKey(name: 'confirmation_token') String? confirmationToken,
      @JsonKey(name: 'confirmation_sent_at') dynamic confirmationSentAt,
      @JsonKey(name: 'recovery_token') String? recoveryToken,
      @JsonKey(name: 'recovery_sent_at') dynamic recoverySentAt,
      @JsonKey(name: 'email_change_token_new') String? emailChangeTokenNew,
      @JsonKey(name: 'email_change') String? emailChange,
      @JsonKey(name: 'email_change_sent_at') dynamic emailChangeSentAt,
      @JsonKey(name: 'last_sign_in_at') String? lastSignInAt,
      @JsonKey(name: 'raw_app_meta_data') RawAppMetaData? rawAppMetaData,
      @JsonKey(name: 'raw_user_meta_data') RawUserMetaData? rawUserMetaData,
      @JsonKey(name: 'is_super_admin') dynamic isSuperAdmin,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      dynamic phone,
      @JsonKey(name: 'phone_confirmed_at') dynamic phoneConfirmedAt,
      @JsonKey(name: 'phone_change') String? phoneChange,
      @JsonKey(name: 'phone_change_token') String? phoneChangeToken,
      @JsonKey(name: 'phone_change_sent_at') dynamic phoneChangeSentAt,
      @JsonKey(name: 'confirmed_at') String? confirmedAt,
      @JsonKey(name: 'email_change_token_current')
      String? emailChangeTokenCurrent,
      @JsonKey(name: 'email_change_confirm_status')
      int? emailChangeConfirmStatus,
      @JsonKey(name: 'banned_until') dynamic bannedUntil,
      @JsonKey(name: 'reauthentication_token') String? reauthenticationToken,
      @JsonKey(name: 'reauthentication_sent_at') dynamic reauthenticationSentAt,
      @JsonKey(name: 'is_sso_user') bool? isSsoUser,
      @JsonKey(name: 'deleted_at') dynamic deletedAt});

  @override
  $RawAppMetaDataCopyWith<$Res>? get rawAppMetaData;
  @override
  $RawUserMetaDataCopyWith<$Res>? get rawUserMetaData;
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instanceId = freezed,
    Object? id = freezed,
    Object? aud = freezed,
    Object? role = freezed,
    Object? email = freezed,
    Object? encryptedPassword = freezed,
    Object? emailConfirmedAt = freezed,
    Object? invitedAt = freezed,
    Object? confirmationToken = freezed,
    Object? confirmationSentAt = freezed,
    Object? recoveryToken = freezed,
    Object? recoverySentAt = freezed,
    Object? emailChangeTokenNew = freezed,
    Object? emailChange = freezed,
    Object? emailChangeSentAt = freezed,
    Object? lastSignInAt = freezed,
    Object? rawAppMetaData = freezed,
    Object? rawUserMetaData = freezed,
    Object? isSuperAdmin = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? phone = freezed,
    Object? phoneConfirmedAt = freezed,
    Object? phoneChange = freezed,
    Object? phoneChangeToken = freezed,
    Object? phoneChangeSentAt = freezed,
    Object? confirmedAt = freezed,
    Object? emailChangeTokenCurrent = freezed,
    Object? emailChangeConfirmStatus = freezed,
    Object? bannedUntil = freezed,
    Object? reauthenticationToken = freezed,
    Object? reauthenticationSentAt = freezed,
    Object? isSsoUser = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$UserDataImpl(
      instanceId: freezed == instanceId
          ? _value.instanceId
          : instanceId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      aud: freezed == aud
          ? _value.aud
          : aud // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      encryptedPassword: freezed == encryptedPassword
          ? _value.encryptedPassword
          : encryptedPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      emailConfirmedAt: freezed == emailConfirmedAt
          ? _value.emailConfirmedAt
          : emailConfirmedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedAt: freezed == invitedAt
          ? _value.invitedAt
          : invitedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      confirmationToken: freezed == confirmationToken
          ? _value.confirmationToken
          : confirmationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmationSentAt: freezed == confirmationSentAt
          ? _value.confirmationSentAt
          : confirmationSentAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      recoveryToken: freezed == recoveryToken
          ? _value.recoveryToken
          : recoveryToken // ignore: cast_nullable_to_non_nullable
              as String?,
      recoverySentAt: freezed == recoverySentAt
          ? _value.recoverySentAt
          : recoverySentAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      emailChangeTokenNew: freezed == emailChangeTokenNew
          ? _value.emailChangeTokenNew
          : emailChangeTokenNew // ignore: cast_nullable_to_non_nullable
              as String?,
      emailChange: freezed == emailChange
          ? _value.emailChange
          : emailChange // ignore: cast_nullable_to_non_nullable
              as String?,
      emailChangeSentAt: freezed == emailChangeSentAt
          ? _value.emailChangeSentAt
          : emailChangeSentAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastSignInAt: freezed == lastSignInAt
          ? _value.lastSignInAt
          : lastSignInAt // ignore: cast_nullable_to_non_nullable
              as String?,
      rawAppMetaData: freezed == rawAppMetaData
          ? _value.rawAppMetaData
          : rawAppMetaData // ignore: cast_nullable_to_non_nullable
              as RawAppMetaData?,
      rawUserMetaData: freezed == rawUserMetaData
          ? _value.rawUserMetaData
          : rawUserMetaData // ignore: cast_nullable_to_non_nullable
              as RawUserMetaData?,
      isSuperAdmin: freezed == isSuperAdmin
          ? _value.isSuperAdmin
          : isSuperAdmin // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phoneConfirmedAt: freezed == phoneConfirmedAt
          ? _value.phoneConfirmedAt
          : phoneConfirmedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phoneChange: freezed == phoneChange
          ? _value.phoneChange
          : phoneChange // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneChangeToken: freezed == phoneChangeToken
          ? _value.phoneChangeToken
          : phoneChangeToken // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneChangeSentAt: freezed == phoneChangeSentAt
          ? _value.phoneChangeSentAt
          : phoneChangeSentAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      confirmedAt: freezed == confirmedAt
          ? _value.confirmedAt
          : confirmedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      emailChangeTokenCurrent: freezed == emailChangeTokenCurrent
          ? _value.emailChangeTokenCurrent
          : emailChangeTokenCurrent // ignore: cast_nullable_to_non_nullable
              as String?,
      emailChangeConfirmStatus: freezed == emailChangeConfirmStatus
          ? _value.emailChangeConfirmStatus
          : emailChangeConfirmStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      bannedUntil: freezed == bannedUntil
          ? _value.bannedUntil
          : bannedUntil // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reauthenticationToken: freezed == reauthenticationToken
          ? _value.reauthenticationToken
          : reauthenticationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      reauthenticationSentAt: freezed == reauthenticationSentAt
          ? _value.reauthenticationSentAt
          : reauthenticationSentAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isSsoUser: freezed == isSsoUser
          ? _value.isSsoUser
          : isSsoUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl implements _UserData {
  _$UserDataImpl(
      {@JsonKey(name: 'instance_id') this.instanceId,
      this.id,
      this.aud,
      this.role,
      this.email,
      @JsonKey(name: 'encrypted_password') this.encryptedPassword,
      @JsonKey(name: 'email_confirmed_at') this.emailConfirmedAt,
      @JsonKey(name: 'invited_at') this.invitedAt,
      @JsonKey(name: 'confirmation_token') this.confirmationToken,
      @JsonKey(name: 'confirmation_sent_at') this.confirmationSentAt,
      @JsonKey(name: 'recovery_token') this.recoveryToken,
      @JsonKey(name: 'recovery_sent_at') this.recoverySentAt,
      @JsonKey(name: 'email_change_token_new') this.emailChangeTokenNew,
      @JsonKey(name: 'email_change') this.emailChange,
      @JsonKey(name: 'email_change_sent_at') this.emailChangeSentAt,
      @JsonKey(name: 'last_sign_in_at') this.lastSignInAt,
      @JsonKey(name: 'raw_app_meta_data') this.rawAppMetaData,
      @JsonKey(name: 'raw_user_meta_data') this.rawUserMetaData,
      @JsonKey(name: 'is_super_admin') this.isSuperAdmin,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.phone,
      @JsonKey(name: 'phone_confirmed_at') this.phoneConfirmedAt,
      @JsonKey(name: 'phone_change') this.phoneChange,
      @JsonKey(name: 'phone_change_token') this.phoneChangeToken,
      @JsonKey(name: 'phone_change_sent_at') this.phoneChangeSentAt,
      @JsonKey(name: 'confirmed_at') this.confirmedAt,
      @JsonKey(name: 'email_change_token_current') this.emailChangeTokenCurrent,
      @JsonKey(name: 'email_change_confirm_status')
      this.emailChangeConfirmStatus,
      @JsonKey(name: 'banned_until') this.bannedUntil,
      @JsonKey(name: 'reauthentication_token') this.reauthenticationToken,
      @JsonKey(name: 'reauthentication_sent_at') this.reauthenticationSentAt,
      @JsonKey(name: 'is_sso_user') this.isSsoUser,
      @JsonKey(name: 'deleted_at') this.deletedAt});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  @JsonKey(name: 'instance_id')
  final String? instanceId;
  @override
  final String? id;
  @override
  final String? aud;
  @override
  final String? role;
  @override
  final String? email;
  @override
  @JsonKey(name: 'encrypted_password')
  final String? encryptedPassword;
  @override
  @JsonKey(name: 'email_confirmed_at')
  final String? emailConfirmedAt;
  @override
  @JsonKey(name: 'invited_at')
  final dynamic invitedAt;
  @override
  @JsonKey(name: 'confirmation_token')
  final String? confirmationToken;
  @override
  @JsonKey(name: 'confirmation_sent_at')
  final dynamic confirmationSentAt;
  @override
  @JsonKey(name: 'recovery_token')
  final String? recoveryToken;
  @override
  @JsonKey(name: 'recovery_sent_at')
  final dynamic recoverySentAt;
  @override
  @JsonKey(name: 'email_change_token_new')
  final String? emailChangeTokenNew;
  @override
  @JsonKey(name: 'email_change')
  final String? emailChange;
  @override
  @JsonKey(name: 'email_change_sent_at')
  final dynamic emailChangeSentAt;
  @override
  @JsonKey(name: 'last_sign_in_at')
  final String? lastSignInAt;
  @override
  @JsonKey(name: 'raw_app_meta_data')
  final RawAppMetaData? rawAppMetaData;
  @override
  @JsonKey(name: 'raw_user_meta_data')
  final RawUserMetaData? rawUserMetaData;
  @override
  @JsonKey(name: 'is_super_admin')
  final dynamic isSuperAdmin;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  final dynamic phone;
  @override
  @JsonKey(name: 'phone_confirmed_at')
  final dynamic phoneConfirmedAt;
  @override
  @JsonKey(name: 'phone_change')
  final String? phoneChange;
  @override
  @JsonKey(name: 'phone_change_token')
  final String? phoneChangeToken;
  @override
  @JsonKey(name: 'phone_change_sent_at')
  final dynamic phoneChangeSentAt;
  @override
  @JsonKey(name: 'confirmed_at')
  final String? confirmedAt;
  @override
  @JsonKey(name: 'email_change_token_current')
  final String? emailChangeTokenCurrent;
  @override
  @JsonKey(name: 'email_change_confirm_status')
  final int? emailChangeConfirmStatus;
  @override
  @JsonKey(name: 'banned_until')
  final dynamic bannedUntil;
  @override
  @JsonKey(name: 'reauthentication_token')
  final String? reauthenticationToken;
  @override
  @JsonKey(name: 'reauthentication_sent_at')
  final dynamic reauthenticationSentAt;
  @override
  @JsonKey(name: 'is_sso_user')
  final bool? isSsoUser;
  @override
  @JsonKey(name: 'deleted_at')
  final dynamic deletedAt;

  @override
  String toString() {
    return 'UserData(instanceId: $instanceId, id: $id, aud: $aud, role: $role, email: $email, encryptedPassword: $encryptedPassword, emailConfirmedAt: $emailConfirmedAt, invitedAt: $invitedAt, confirmationToken: $confirmationToken, confirmationSentAt: $confirmationSentAt, recoveryToken: $recoveryToken, recoverySentAt: $recoverySentAt, emailChangeTokenNew: $emailChangeTokenNew, emailChange: $emailChange, emailChangeSentAt: $emailChangeSentAt, lastSignInAt: $lastSignInAt, rawAppMetaData: $rawAppMetaData, rawUserMetaData: $rawUserMetaData, isSuperAdmin: $isSuperAdmin, createdAt: $createdAt, updatedAt: $updatedAt, phone: $phone, phoneConfirmedAt: $phoneConfirmedAt, phoneChange: $phoneChange, phoneChangeToken: $phoneChangeToken, phoneChangeSentAt: $phoneChangeSentAt, confirmedAt: $confirmedAt, emailChangeTokenCurrent: $emailChangeTokenCurrent, emailChangeConfirmStatus: $emailChangeConfirmStatus, bannedUntil: $bannedUntil, reauthenticationToken: $reauthenticationToken, reauthenticationSentAt: $reauthenticationSentAt, isSsoUser: $isSsoUser, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.instanceId, instanceId) ||
                other.instanceId == instanceId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.aud, aud) || other.aud == aud) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.encryptedPassword, encryptedPassword) ||
                other.encryptedPassword == encryptedPassword) &&
            (identical(other.emailConfirmedAt, emailConfirmedAt) ||
                other.emailConfirmedAt == emailConfirmedAt) &&
            const DeepCollectionEquality().equals(other.invitedAt, invitedAt) &&
            (identical(other.confirmationToken, confirmationToken) ||
                other.confirmationToken == confirmationToken) &&
            const DeepCollectionEquality()
                .equals(other.confirmationSentAt, confirmationSentAt) &&
            (identical(other.recoveryToken, recoveryToken) ||
                other.recoveryToken == recoveryToken) &&
            const DeepCollectionEquality()
                .equals(other.recoverySentAt, recoverySentAt) &&
            (identical(other.emailChangeTokenNew, emailChangeTokenNew) ||
                other.emailChangeTokenNew == emailChangeTokenNew) &&
            (identical(other.emailChange, emailChange) ||
                other.emailChange == emailChange) &&
            const DeepCollectionEquality()
                .equals(other.emailChangeSentAt, emailChangeSentAt) &&
            (identical(other.lastSignInAt, lastSignInAt) ||
                other.lastSignInAt == lastSignInAt) &&
            (identical(other.rawAppMetaData, rawAppMetaData) ||
                other.rawAppMetaData == rawAppMetaData) &&
            (identical(other.rawUserMetaData, rawUserMetaData) ||
                other.rawUserMetaData == rawUserMetaData) &&
            const DeepCollectionEquality()
                .equals(other.isSuperAdmin, isSuperAdmin) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality()
                .equals(other.phoneConfirmedAt, phoneConfirmedAt) &&
            (identical(other.phoneChange, phoneChange) ||
                other.phoneChange == phoneChange) &&
            (identical(other.phoneChangeToken, phoneChangeToken) ||
                other.phoneChangeToken == phoneChangeToken) &&
            const DeepCollectionEquality()
                .equals(other.phoneChangeSentAt, phoneChangeSentAt) &&
            (identical(other.confirmedAt, confirmedAt) ||
                other.confirmedAt == confirmedAt) &&
            (identical(
                    other.emailChangeTokenCurrent, emailChangeTokenCurrent) ||
                other.emailChangeTokenCurrent == emailChangeTokenCurrent) &&
            (identical(
                    other.emailChangeConfirmStatus, emailChangeConfirmStatus) ||
                other.emailChangeConfirmStatus == emailChangeConfirmStatus) &&
            const DeepCollectionEquality()
                .equals(other.bannedUntil, bannedUntil) &&
            (identical(other.reauthenticationToken, reauthenticationToken) ||
                other.reauthenticationToken == reauthenticationToken) &&
            const DeepCollectionEquality()
                .equals(other.reauthenticationSentAt, reauthenticationSentAt) &&
            (identical(other.isSsoUser, isSsoUser) ||
                other.isSsoUser == isSsoUser) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        instanceId,
        id,
        aud,
        role,
        email,
        encryptedPassword,
        emailConfirmedAt,
        const DeepCollectionEquality().hash(invitedAt),
        confirmationToken,
        const DeepCollectionEquality().hash(confirmationSentAt),
        recoveryToken,
        const DeepCollectionEquality().hash(recoverySentAt),
        emailChangeTokenNew,
        emailChange,
        const DeepCollectionEquality().hash(emailChangeSentAt),
        lastSignInAt,
        rawAppMetaData,
        rawUserMetaData,
        const DeepCollectionEquality().hash(isSuperAdmin),
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(phone),
        const DeepCollectionEquality().hash(phoneConfirmedAt),
        phoneChange,
        phoneChangeToken,
        const DeepCollectionEquality().hash(phoneChangeSentAt),
        confirmedAt,
        emailChangeTokenCurrent,
        emailChangeConfirmStatus,
        const DeepCollectionEquality().hash(bannedUntil),
        reauthenticationToken,
        const DeepCollectionEquality().hash(reauthenticationSentAt),
        isSsoUser,
        const DeepCollectionEquality().hash(deletedAt)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  factory _UserData(
      {@JsonKey(name: 'instance_id') final String? instanceId,
      final String? id,
      final String? aud,
      final String? role,
      final String? email,
      @JsonKey(name: 'encrypted_password') final String? encryptedPassword,
      @JsonKey(name: 'email_confirmed_at') final String? emailConfirmedAt,
      @JsonKey(name: 'invited_at') final dynamic invitedAt,
      @JsonKey(name: 'confirmation_token') final String? confirmationToken,
      @JsonKey(name: 'confirmation_sent_at') final dynamic confirmationSentAt,
      @JsonKey(name: 'recovery_token') final String? recoveryToken,
      @JsonKey(name: 'recovery_sent_at') final dynamic recoverySentAt,
      @JsonKey(name: 'email_change_token_new')
      final String? emailChangeTokenNew,
      @JsonKey(name: 'email_change') final String? emailChange,
      @JsonKey(name: 'email_change_sent_at') final dynamic emailChangeSentAt,
      @JsonKey(name: 'last_sign_in_at') final String? lastSignInAt,
      @JsonKey(name: 'raw_app_meta_data') final RawAppMetaData? rawAppMetaData,
      @JsonKey(name: 'raw_user_meta_data')
      final RawUserMetaData? rawUserMetaData,
      @JsonKey(name: 'is_super_admin') final dynamic isSuperAdmin,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      final dynamic phone,
      @JsonKey(name: 'phone_confirmed_at') final dynamic phoneConfirmedAt,
      @JsonKey(name: 'phone_change') final String? phoneChange,
      @JsonKey(name: 'phone_change_token') final String? phoneChangeToken,
      @JsonKey(name: 'phone_change_sent_at') final dynamic phoneChangeSentAt,
      @JsonKey(name: 'confirmed_at') final String? confirmedAt,
      @JsonKey(name: 'email_change_token_current')
      final String? emailChangeTokenCurrent,
      @JsonKey(name: 'email_change_confirm_status')
      final int? emailChangeConfirmStatus,
      @JsonKey(name: 'banned_until') final dynamic bannedUntil,
      @JsonKey(name: 'reauthentication_token')
      final String? reauthenticationToken,
      @JsonKey(name: 'reauthentication_sent_at')
      final dynamic reauthenticationSentAt,
      @JsonKey(name: 'is_sso_user') final bool? isSsoUser,
      @JsonKey(name: 'deleted_at') final dynamic deletedAt}) = _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  @JsonKey(name: 'instance_id')
  String? get instanceId;
  @override
  String? get id;
  @override
  String? get aud;
  @override
  String? get role;
  @override
  String? get email;
  @override
  @JsonKey(name: 'encrypted_password')
  String? get encryptedPassword;
  @override
  @JsonKey(name: 'email_confirmed_at')
  String? get emailConfirmedAt;
  @override
  @JsonKey(name: 'invited_at')
  dynamic get invitedAt;
  @override
  @JsonKey(name: 'confirmation_token')
  String? get confirmationToken;
  @override
  @JsonKey(name: 'confirmation_sent_at')
  dynamic get confirmationSentAt;
  @override
  @JsonKey(name: 'recovery_token')
  String? get recoveryToken;
  @override
  @JsonKey(name: 'recovery_sent_at')
  dynamic get recoverySentAt;
  @override
  @JsonKey(name: 'email_change_token_new')
  String? get emailChangeTokenNew;
  @override
  @JsonKey(name: 'email_change')
  String? get emailChange;
  @override
  @JsonKey(name: 'email_change_sent_at')
  dynamic get emailChangeSentAt;
  @override
  @JsonKey(name: 'last_sign_in_at')
  String? get lastSignInAt;
  @override
  @JsonKey(name: 'raw_app_meta_data')
  RawAppMetaData? get rawAppMetaData;
  @override
  @JsonKey(name: 'raw_user_meta_data')
  RawUserMetaData? get rawUserMetaData;
  @override
  @JsonKey(name: 'is_super_admin')
  dynamic get isSuperAdmin;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  dynamic get phone;
  @override
  @JsonKey(name: 'phone_confirmed_at')
  dynamic get phoneConfirmedAt;
  @override
  @JsonKey(name: 'phone_change')
  String? get phoneChange;
  @override
  @JsonKey(name: 'phone_change_token')
  String? get phoneChangeToken;
  @override
  @JsonKey(name: 'phone_change_sent_at')
  dynamic get phoneChangeSentAt;
  @override
  @JsonKey(name: 'confirmed_at')
  String? get confirmedAt;
  @override
  @JsonKey(name: 'email_change_token_current')
  String? get emailChangeTokenCurrent;
  @override
  @JsonKey(name: 'email_change_confirm_status')
  int? get emailChangeConfirmStatus;
  @override
  @JsonKey(name: 'banned_until')
  dynamic get bannedUntil;
  @override
  @JsonKey(name: 'reauthentication_token')
  String? get reauthenticationToken;
  @override
  @JsonKey(name: 'reauthentication_sent_at')
  dynamic get reauthenticationSentAt;
  @override
  @JsonKey(name: 'is_sso_user')
  bool? get isSsoUser;
  @override
  @JsonKey(name: 'deleted_at')
  dynamic get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
