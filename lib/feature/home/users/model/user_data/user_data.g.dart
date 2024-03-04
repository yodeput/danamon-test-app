// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      instanceId: json['instance_id'] as String?,
      id: json['id'] as String?,
      aud: json['aud'] as String?,
      role: json['role'] as String?,
      email: json['email'] as String?,
      encryptedPassword: json['encrypted_password'] as String?,
      emailConfirmedAt: json['email_confirmed_at'] as String?,
      invitedAt: json['invited_at'],
      confirmationToken: json['confirmation_token'] as String?,
      confirmationSentAt: json['confirmation_sent_at'],
      recoveryToken: json['recovery_token'] as String?,
      recoverySentAt: json['recovery_sent_at'],
      emailChangeTokenNew: json['email_change_token_new'] as String?,
      emailChange: json['email_change'] as String?,
      emailChangeSentAt: json['email_change_sent_at'],
      lastSignInAt: json['last_sign_in_at'] as String?,
      rawAppMetaData: json['raw_app_meta_data'] == null
          ? null
          : RawAppMetaData.fromJson(
              json['raw_app_meta_data'] as Map<String, dynamic>),
      rawUserMetaData: json['raw_user_meta_data'] == null
          ? null
          : RawUserMetaData.fromJson(
              json['raw_user_meta_data'] as Map<String, dynamic>),
      isSuperAdmin: json['is_super_admin'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      phone: json['phone'],
      phoneConfirmedAt: json['phone_confirmed_at'],
      phoneChange: json['phone_change'] as String?,
      phoneChangeToken: json['phone_change_token'] as String?,
      phoneChangeSentAt: json['phone_change_sent_at'],
      confirmedAt: json['confirmed_at'] as String?,
      emailChangeTokenCurrent: json['email_change_token_current'] as String?,
      emailChangeConfirmStatus: json['email_change_confirm_status'] as int?,
      bannedUntil: json['banned_until'],
      reauthenticationToken: json['reauthentication_token'] as String?,
      reauthenticationSentAt: json['reauthentication_sent_at'],
      isSsoUser: json['is_sso_user'] as bool?,
      deletedAt: json['deleted_at'],
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'instance_id': instance.instanceId,
      'id': instance.id,
      'aud': instance.aud,
      'role': instance.role,
      'email': instance.email,
      'encrypted_password': instance.encryptedPassword,
      'email_confirmed_at': instance.emailConfirmedAt,
      'invited_at': instance.invitedAt,
      'confirmation_token': instance.confirmationToken,
      'confirmation_sent_at': instance.confirmationSentAt,
      'recovery_token': instance.recoveryToken,
      'recovery_sent_at': instance.recoverySentAt,
      'email_change_token_new': instance.emailChangeTokenNew,
      'email_change': instance.emailChange,
      'email_change_sent_at': instance.emailChangeSentAt,
      'last_sign_in_at': instance.lastSignInAt,
      'raw_app_meta_data': instance.rawAppMetaData,
      'raw_user_meta_data': instance.rawUserMetaData,
      'is_super_admin': instance.isSuperAdmin,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'phone': instance.phone,
      'phone_confirmed_at': instance.phoneConfirmedAt,
      'phone_change': instance.phoneChange,
      'phone_change_token': instance.phoneChangeToken,
      'phone_change_sent_at': instance.phoneChangeSentAt,
      'confirmed_at': instance.confirmedAt,
      'email_change_token_current': instance.emailChangeTokenCurrent,
      'email_change_confirm_status': instance.emailChangeConfirmStatus,
      'banned_until': instance.bannedUntil,
      'reauthentication_token': instance.reauthenticationToken,
      'reauthentication_sent_at': instance.reauthenticationSentAt,
      'is_sso_user': instance.isSsoUser,
      'deleted_at': instance.deletedAt,
    };
