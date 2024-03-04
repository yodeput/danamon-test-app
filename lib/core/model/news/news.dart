import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';

part 'news.g.dart';

@freezed
class News with _$News {
  factory News({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "institution_id") String? institutionId,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "slug") String? slug,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "is_active") bool? isActive,
    @JsonKey(name: "category_name") String? categoryName,
    @JsonKey(name: "category_slug") String? categorySlug,
    @JsonKey(name: "craeted_at") String? craetedAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}

@freezed
class NewsCategory with _$NewsCategory {
  factory NewsCategory({
    String? slug,
    String? text,
    @JsonKey(name: "institution_id") String? institutionId,
    @JsonKey(name: "is_active") bool? isActive,
  }) = _NewsCategory;

  factory NewsCategory.fromJson(Map<String, dynamic> json) =>
      _$NewsCategoryFromJson(json);
}
