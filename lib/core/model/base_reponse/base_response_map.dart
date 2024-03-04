import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_map.freezed.dart';

part 'base_response_map.g.dart';

@freezed
class BaseResponseMap with _$BaseResponseMap {
  const factory BaseResponseMap({
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') Map<String, dynamic>? data,
  }) = _BaseResponseMap;

  factory BaseResponseMap.fromJson(Map<String, Object?> json) =>
      _$BaseResponseMapFromJson(json);
}
