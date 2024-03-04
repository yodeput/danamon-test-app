import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.freezed.dart';

part 'base_response.g.dart';

@Freezed(genericArgumentFactories: true)
class BaseResponse<T> with _$BaseResponse<T> {
  const factory BaseResponse({
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') T? data,
  }) = _BaseResponse;

  factory BaseResponse.fromJson(
          Map<String, Object?> json, T Function(Object?) fromJsonT) =>
      _$BaseResponseFromJson(json, fromJsonT);
}
