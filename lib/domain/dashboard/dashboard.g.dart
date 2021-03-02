// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Dashboard _$_$_DashboardFromJson(Map<String, dynamic> json) {
  return _$_Dashboard(
    responseCode: json['responseCode'] as int,
    responseMessage: json['responseMessage'] as String,
    saleProducts: (json['saleProducts'] as List)
        ?.map((e) =>
            e == null ? null : Product.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    featuredProducts: (json['featuredProducts'] as List)
        ?.map((e) =>
            e == null ? null : Product.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    topProducts: (json['topProducts'] as List)
        ?.map((e) =>
            e == null ? null : Product.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    getCategory: (json['getCategory'] as List)
        ?.map((e) =>
            e == null ? null : MainCategory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    brands: (json['brands'] as List)
        ?.map(
            (e) => e == null ? null : Brand.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    slider: (json['slider'] as List)
        ?.map(
            (e) => e == null ? null : Brand.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    shopByCategory: (json['shopByCategory'] as List)
        ?.map((e) =>
            e == null ? null : Category.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    banner: (json['banner'] as List)
        ?.map((e) =>
            e == null ? null : Banner.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_DashboardToJson(_$_Dashboard instance) =>
    <String, dynamic>{
      'responseCode': instance.responseCode,
      'responseMessage': instance.responseMessage,
      'saleProducts': instance.saleProducts,
      'featuredProducts': instance.featuredProducts,
      'topProducts': instance.topProducts,
      'getCategory': instance.getCategory,
      'brands': instance.brands,
      'slider': instance.slider,
      'shopByCategory': instance.shopByCategory,
      'banner': instance.banner,
    };

_$_Brand _$_$_BrandFromJson(Map<String, dynamic> json) {
  return _$_Brand(
    id: json['id'] as String,
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$_$_BrandToJson(_$_Brand instance) => <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };

_$_MainCategory _$_$_MainCategoryFromJson(Map<String, dynamic> json) {
  return _$_MainCategory(
    id: json['id'] as String,
    name: json['name'] as String,
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$_$_MainCategoryToJson(_$_MainCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };

_$_Category _$_$_CategoryFromJson(Map<String, dynamic> json) {
  return _$_Category(
    id: json['id'] as String,
    name: json['name'] as String,
    image: json['image'] as String,
    parentId: json['parentId'] as String,
    subsubcategory: (json['subsubcategory'] as List)
        ?.map((e) =>
            e == null ? null : Category.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'parentId': instance.parentId,
      'subsubcategory': instance.subsubcategory,
    };

_$_Banner _$_$_BannerFromJson(Map<String, dynamic> json) {
  return _$_Banner(
    id: json['id'] as String,
    title: json['title'] as String,
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$_$_BannerToJson(_$_Banner instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };
