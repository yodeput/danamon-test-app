// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsImpl _$$NewsImplFromJson(Map<String, dynamic> json) => _$NewsImpl(
      id: json['id'] as String?,
      institutionId: json['institution_id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      slug: json['slug'] as String?,
      image: json['image'] as String?,
      isActive: json['is_active'] as bool?,
      categoryName: json['category_name'] as String?,
      categorySlug: json['category_slug'] as String?,
      craetedAt: json['craeted_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$NewsImplToJson(_$NewsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'institution_id': instance.institutionId,
      'title': instance.title,
      'description': instance.description,
      'slug': instance.slug,
      'image': instance.image,
      'is_active': instance.isActive,
      'category_name': instance.categoryName,
      'category_slug': instance.categorySlug,
      'craeted_at': instance.craetedAt,
      'updated_at': instance.updatedAt,
    };

_$NewsCategoryImpl _$$NewsCategoryImplFromJson(Map<String, dynamic> json) =>
    _$NewsCategoryImpl(
      slug: json['slug'] as String?,
      text: json['text'] as String?,
      institutionId: json['institution_id'] as String?,
      isActive: json['is_active'] as bool?,
    );

Map<String, dynamic> _$$NewsCategoryImplToJson(_$NewsCategoryImpl instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'text': instance.text,
      'institution_id': instance.institutionId,
      'is_active': instance.isActive,
    };
