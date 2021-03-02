// To parse this JSON data, do
//
//     final dashboard = dashboardFromMap(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:shoppingApp/domain/product/product.dart';

part 'dashboard.freezed.dart';
part 'dashboard.g.dart';

@freezed
abstract class Dashboard with _$Dashboard {
  const factory Dashboard({
    @required int responseCode,
    @required String responseMessage,
    @required List<Product> saleProducts,
    @required List<Product> featuredProducts,
    @required List<Product> topProducts,
    @required List<MainCategory> getCategory,
    @required List<Brand> brands,
    @required List<Brand> slider,
    @required List<Category> shopByCategory,
    @required List<Banner> banner,
  }) = _Dashboard;

  factory Dashboard.fromJson(Map<String, dynamic> json) =>
      _$DashboardFromJson(json);
}

@freezed
abstract class Brand with _$Brand {
  const factory Brand({
    @required String id,
    @required String image,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

@freezed
abstract class MainCategory with _$MainCategory {
  const factory MainCategory({
    @required String id,
    @required String name,
    @required String image,
  }) = _MainCategory;

  factory MainCategory.fromJson(Map<String, dynamic> json) =>
      _$MainCategoryFromJson(json);
}

@freezed
abstract class Category with _$Category {
  const factory Category({
    @required String id,
    @required String name,
    @required String image,
    String parentId, //not required since subcategories don't have parentId
    List<Category>
        subsubcategory, //not required since category may not have sub categories
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
abstract class Banner with _$Banner {
  const factory Banner({
    @required String id,
    @required String title,
    @required String image,
  }) = _Banner;

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
}
