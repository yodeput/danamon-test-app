import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'raw_app_meta_data.dart';
import 'raw_user_meta_data.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  factory UserData({
    @JsonKey(name: 'instance_id') String? instanceId,
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
    @JsonKey(name: 'email_change_confirm_status') int? emailChangeConfirmStatus,
    @JsonKey(name: 'banned_until') dynamic bannedUntil,
    @JsonKey(name: 'reauthentication_token') String? reauthenticationToken,
    @JsonKey(name: 'reauthentication_sent_at') dynamic reauthenticationSentAt,
    @JsonKey(name: 'is_sso_user') bool? isSsoUser,
    @JsonKey(name: 'deleted_at') dynamic deletedAt,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
