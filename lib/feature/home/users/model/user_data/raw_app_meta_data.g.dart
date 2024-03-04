// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_app_meta_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RawAppMetaDataImpl _$$RawAppMetaDataImplFromJson(Map<String, dynamic> json) =>
    _$RawAppMetaDataImpl(
      provider: json['provider'] as String?,
      providers: (json['providers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$RawAppMetaDataImplToJson(
        _$RawAppMetaDataImpl instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'providers': instance.providers,
    };
