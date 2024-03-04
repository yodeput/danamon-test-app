import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'register_response.freezed.dart';
part 'register_response.g.dart';

@freezed
class RegisterResponse with _$RegisterResponse {
  factory RegisterResponse({
    bool? status,
    String? message,
    @JsonKey(name: 'is_use_sms_activation') bool? isUseSmsActivation,
    Data? data,
  }) = _RegisterResponse;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}
