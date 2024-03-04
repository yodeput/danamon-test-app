// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

News _$NewsFromJson(Map<String, dynamic> json) {
  return _News.fromJson(json);
}

/// @nodoc
mixin _$News {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "institution_id")
  String? get institutionId => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "category_name")
  String? get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: "category_slug")
  String? get categorySlug => throw _privateConstructorUsedError;
  @JsonKey(name: "craeted_at")
  String? get craetedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res, News>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "institution_id") String? institutionId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "category_name") String? categoryName,
      @JsonKey(name: "category_slug") String? categorySlug,
      @JsonKey(name: "craeted_at") String? craetedAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$NewsCopyWithImpl<$Res, $Val extends News>
    implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? institutionId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? slug = freezed,
    Object? image = freezed,
    Object? isActive = freezed,
    Object? categoryName = freezed,
    Object? categorySlug = freezed,
    Object? craetedAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionId: freezed == institutionId
          ? _value.institutionId
          : institutionId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categorySlug: freezed == categorySlug
          ? _value.categorySlug
          : categorySlug // ignore: cast_nullable_to_non_nullable
              as String?,
      craetedAt: freezed == craetedAt
          ? _value.craetedAt
          : craetedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsImplCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$$NewsImplCopyWith(
          _$NewsImpl value, $Res Function(_$NewsImpl) then) =
      __$$NewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "institution_id") String? institutionId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "category_name") String? categoryName,
      @JsonKey(name: "category_slug") String? categorySlug,
      @JsonKey(name: "craeted_at") String? craetedAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$NewsImplCopyWithImpl<$Res>
    extends _$NewsCopyWithImpl<$Res, _$NewsImpl>
    implements _$$NewsImplCopyWith<$Res> {
  __$$NewsImplCopyWithImpl(_$NewsImpl _value, $Res Function(_$NewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? institutionId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? slug = freezed,
    Object? image = freezed,
    Object? isActive = freezed,
    Object? categoryName = freezed,
    Object? categorySlug = freezed,
    Object? craetedAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$NewsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionId: freezed == institutionId
          ? _value.institutionId
          : institutionId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categorySlug: freezed == categorySlug
          ? _value.categorySlug
          : categorySlug // ignore: cast_nullable_to_non_nullable
              as String?,
      craetedAt: freezed == craetedAt
          ? _value.craetedAt
          : craetedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsImpl implements _News {
  _$NewsImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "institution_id") this.institutionId,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "slug") this.slug,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "category_name") this.categoryName,
      @JsonKey(name: "category_slug") this.categorySlug,
      @JsonKey(name: "craeted_at") this.craetedAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$NewsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "institution_id")
  final String? institutionId;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "slug")
  final String? slug;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "category_name")
  final String? categoryName;
  @override
  @JsonKey(name: "category_slug")
  final String? categorySlug;
  @override
  @JsonKey(name: "craeted_at")
  final String? craetedAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'News(id: $id, institutionId: $institutionId, title: $title, description: $description, slug: $slug, image: $image, isActive: $isActive, categoryName: $categoryName, categorySlug: $categorySlug, craetedAt: $craetedAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.institutionId, institutionId) ||
                other.institutionId == institutionId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categorySlug, categorySlug) ||
                other.categorySlug == categorySlug) &&
            (identical(other.craetedAt, craetedAt) ||
                other.craetedAt == craetedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      institutionId,
      title,
      description,
      slug,
      image,
      isActive,
      categoryName,
      categorySlug,
      craetedAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsImplCopyWith<_$NewsImpl> get copyWith =>
      __$$NewsImplCopyWithImpl<_$NewsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsImplToJson(
      this,
    );
  }
}

abstract class _News implements News {
  factory _News(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "institution_id") final String? institutionId,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "slug") final String? slug,
      @JsonKey(name: "image") final String? image,
      @JsonKey(name: "is_active") final bool? isActive,
      @JsonKey(name: "category_name") final String? categoryName,
      @JsonKey(name: "category_slug") final String? categorySlug,
      @JsonKey(name: "craeted_at") final String? craetedAt,
      @JsonKey(name: "updated_at") final String? updatedAt}) = _$NewsImpl;

  factory _News.fromJson(Map<String, dynamic> json) = _$NewsImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "institution_id")
  String? get institutionId;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "slug")
  String? get slug;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "category_name")
  String? get categoryName;
  @override
  @JsonKey(name: "category_slug")
  String? get categorySlug;
  @override
  @JsonKey(name: "craeted_at")
  String? get craetedAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$NewsImplCopyWith<_$NewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsCategory _$NewsCategoryFromJson(Map<String, dynamic> json) {
  return _NewsCategory.fromJson(json);
}

/// @nodoc
mixin _$NewsCategory {
  String? get slug => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: "institution_id")
  String? get institutionId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCategoryCopyWith<NewsCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCategoryCopyWith<$Res> {
  factory $NewsCategoryCopyWith(
          NewsCategory value, $Res Function(NewsCategory) then) =
      _$NewsCategoryCopyWithImpl<$Res, NewsCategory>;
  @useResult
  $Res call(
      {String? slug,
      String? text,
      @JsonKey(name: "institution_id") String? institutionId,
      @JsonKey(name: "is_active") bool? isActive});
}

/// @nodoc
class _$NewsCategoryCopyWithImpl<$Res, $Val extends NewsCategory>
    implements $NewsCategoryCopyWith<$Res> {
  _$NewsCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? text = freezed,
    Object? institutionId = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionId: freezed == institutionId
          ? _value.institutionId
          : institutionId // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsCategoryImplCopyWith<$Res>
    implements $NewsCategoryCopyWith<$Res> {
  factory _$$NewsCategoryImplCopyWith(
          _$NewsCategoryImpl value, $Res Function(_$NewsCategoryImpl) then) =
      __$$NewsCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? slug,
      String? text,
      @JsonKey(name: "institution_id") String? institutionId,
      @JsonKey(name: "is_active") bool? isActive});
}

/// @nodoc
class __$$NewsCategoryImplCopyWithImpl<$Res>
    extends _$NewsCategoryCopyWithImpl<$Res, _$NewsCategoryImpl>
    implements _$$NewsCategoryImplCopyWith<$Res> {
  __$$NewsCategoryImplCopyWithImpl(
      _$NewsCategoryImpl _value, $Res Function(_$NewsCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? text = freezed,
    Object? institutionId = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$NewsCategoryImpl(
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionId: freezed == institutionId
          ? _value.institutionId
          : institutionId // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsCategoryImpl implements _NewsCategory {
  _$NewsCategoryImpl(
      {this.slug,
      this.text,
      @JsonKey(name: "institution_id") this.institutionId,
      @JsonKey(name: "is_active") this.isActive});

  factory _$NewsCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsCategoryImplFromJson(json);

  @override
  final String? slug;
  @override
  final String? text;
  @override
  @JsonKey(name: "institution_id")
  final String? institutionId;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;

  @override
  String toString() {
    return 'NewsCategory(slug: $slug, text: $text, institutionId: $institutionId, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsCategoryImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.institutionId, institutionId) ||
                other.institutionId == institutionId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, slug, text, institutionId, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsCategoryImplCopyWith<_$NewsCategoryImpl> get copyWith =>
      __$$NewsCategoryImplCopyWithImpl<_$NewsCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsCategoryImplToJson(
      this,
    );
  }
}

abstract class _NewsCategory implements NewsCategory {
  factory _NewsCategory(
      {final String? slug,
      final String? text,
      @JsonKey(name: "institution_id") final String? institutionId,
      @JsonKey(name: "is_active") final bool? isActive}) = _$NewsCategoryImpl;

  factory _NewsCategory.fromJson(Map<String, dynamic> json) =
      _$NewsCategoryImpl.fromJson;

  @override
  String? get slug;
  @override
  String? get text;
  @override
  @JsonKey(name: "institution_id")
  String? get institutionId;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$NewsCategoryImplCopyWith<_$NewsCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
