import 'package:freezed_annotation/freezed_annotation.dart';

part 'raw_app_meta_data.freezed.dart';
part 'raw_app_meta_data.g.dart';

@freezed
class RawAppMetaData with _$RawAppMetaData {
  factory RawAppMetaData({
    String? provider,
    List<String>? providers,
  }) = _RawAppMetaData;

  factory RawAppMetaData.fromJson(Map<String, dynamic> json) =>
      _$RawAppMetaDataFromJson(json);
}
