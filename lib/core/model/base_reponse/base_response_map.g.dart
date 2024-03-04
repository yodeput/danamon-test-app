// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseMapImpl _$$BaseResponseMapImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseResponseMapImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$BaseResponseMapImplToJson(
        _$BaseResponseMapImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
