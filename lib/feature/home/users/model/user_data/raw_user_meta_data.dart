import 'package:freezed_annotation/freezed_annotation.dart';

part 'raw_user_meta_data.freezed.dart';
part 'raw_user_meta_data.g.dart';

@freezed
class RawUserMetaData with _$RawUserMetaData {
  factory RawUserMetaData({
    String? name,
    @JsonKey(name: 'access_level') String? accessLevel,
  }) = _RawUserMetaData;

  factory RawUserMetaData.fromJson(Map<String, dynamic> json) =>
      _$RawUserMetaDataFromJson(json);
}
