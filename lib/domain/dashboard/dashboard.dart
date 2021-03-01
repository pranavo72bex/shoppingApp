// To parse this JSON data, do
//
//     final dashboard = dashboardFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class Dashboard {
  Dashboard({
    @required this.responseCode,
    @required this.responseMessage,
    @required this.saleProducts,
    @required this.featuredProducts,
    @required this.topProducts,
    @required this.getCategory,
    @required this.brands,
    @required this.slider,
    @required this.shopByCategory,
    @required this.banner,
  });

  int responseCode;
  String responseMessage;
  List<FeaturedProductElement> saleProducts;
  List<FeaturedProductElement> featuredProducts;
  List<FeaturedProductElement> topProducts;
  List<GetCategory> getCategory;
  List<Brand> brands;
  List<Brand> slider;
  List<Category> shopByCategory;
  List<Banner> banner;

  Dashboard copyWith({
    int responseCode,
    String responseMessage,
    List<FeaturedProductElement> saleProducts,
    List<FeaturedProductElement> featuredProducts,
    List<FeaturedProductElement> topProducts,
    List<GetCategory> getCategory,
    List<Brand> brands,
    List<Brand> slider,
    List<Category> shopByCategory,
    List<Banner> banner,
  }) =>
      Dashboard(
        responseCode: responseCode ?? this.responseCode,
        responseMessage: responseMessage ?? this.responseMessage,
        saleProducts: saleProducts ?? this.saleProducts,
        featuredProducts: featuredProducts ?? this.featuredProducts,
        topProducts: topProducts ?? this.topProducts,
        getCategory: getCategory ?? this.getCategory,
        brands: brands ?? this.brands,
        slider: slider ?? this.slider,
        shopByCategory: shopByCategory ?? this.shopByCategory,
        banner: banner ?? this.banner,
      );

  factory Dashboard.fromJson(String str) => Dashboard.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Dashboard.fromMap(Map<String, dynamic> json) => Dashboard(
        responseCode: json["responseCode"],
        responseMessage: json["responseMessage"],
        saleProducts: List<FeaturedProductElement>.from(
            json["saleProducts"].map((x) => FeaturedProductElement.fromMap(x))),
        featuredProducts: List<FeaturedProductElement>.from(
            json["featuredProducts"]
                .map((x) => FeaturedProductElement.fromMap(x))),
        topProducts: List<FeaturedProductElement>.from(
            json["topProducts"].map((x) => FeaturedProductElement.fromMap(x))),
        getCategory: List<GetCategory>.from(
            json["getCategory"].map((x) => GetCategory.fromMap(x))),
        brands: List<Brand>.from(json["brands"].map((x) => Brand.fromMap(x))),
        slider: List<Brand>.from(json["slider"].map((x) => Brand.fromMap(x))),
        shopByCategory: List<Category>.from(
            json["shopByCategory"].map((x) => Category.fromMap(x))),
        banner: List<Banner>.from(json["banner"].map((x) => Banner.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "responseCode": responseCode,
        "responseMessage": responseMessage,
        "saleProducts": List<dynamic>.from(saleProducts.map((x) => x.toMap())),
        "featuredProducts":
            List<dynamic>.from(featuredProducts.map((x) => x.toMap())),
        "topProducts": List<dynamic>.from(topProducts.map((x) => x.toMap())),
        "getCategory": List<dynamic>.from(getCategory.map((x) => x.toMap())),
        "brands": List<dynamic>.from(brands.map((x) => x.toMap())),
        "slider": List<dynamic>.from(slider.map((x) => x.toMap())),
        "shopByCategory":
            List<dynamic>.from(shopByCategory.map((x) => x.toMap())),
        "banner": List<dynamic>.from(banner.map((x) => x.toMap())),
      };
}

class Banner {
  Banner({
    @required this.id,
    @required this.title,
    @required this.image,
  });

  String id;
  String title;
  String image;

  Banner copyWith({
    String id,
    String title,
    String image,
  }) =>
      Banner(
        id: id ?? this.id,
        title: title ?? this.title,
        image: image ?? this.image,
      );

  factory Banner.fromJson(String str) => Banner.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Banner.fromMap(Map<String, dynamic> json) => Banner(
        id: json["id"],
        title: json["title"],
        image: json["image"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "image": image,
      };
}

class Brand {
  Brand({
    @required this.id,
    @required this.image,
  });

  String id;
  String image;

  Brand copyWith({
    String id,
    String image,
  }) =>
      Brand(
        id: id ?? this.id,
        image: image ?? this.image,
      );

  factory Brand.fromJson(String str) => Brand.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Brand.fromMap(Map<String, dynamic> json) => Brand(
        id: json["id"],
        image: json["image"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "image": image,
      };
}

class FeaturedProductElement {
  FeaturedProductElement({
    @required this.id,
    @required this.quantity,
    @required this.title,
    @required this.description,
    @required this.avgRating,
    @required this.oldPrice,
    @required this.price,
    @required this.discountName,
    @required this.isVeg,
    @required this.time,
    @required this.shortDescription,
    @required this.quantityInfo,
    @required this.url,
    @required this.image,
  });

  String id;
  String quantity;
  String title;
  String description;
  String avgRating;
  String oldPrice;
  String price;
  String discountName;
  String isVeg;
  String time;
  String shortDescription;
  String quantityInfo;
  String url;
  String image;

  FeaturedProductElement copyWith({
    String id,
    String quantity,
    String title,
    String description,
    String avgRating,
    String oldPrice,
    String price,
    String discountName,
    String isVeg,
    String time,
    String shortDescription,
    String quantityInfo,
    String url,
    String image,
  }) =>
      FeaturedProductElement(
        id: id ?? this.id,
        quantity: quantity ?? this.quantity,
        title: title ?? this.title,
        description: description ?? this.description,
        avgRating: avgRating ?? this.avgRating,
        oldPrice: oldPrice ?? this.oldPrice,
        price: price ?? this.price,
        discountName: discountName ?? this.discountName,
        isVeg: isVeg ?? this.isVeg,
        time: time ?? this.time,
        shortDescription: shortDescription ?? this.shortDescription,
        quantityInfo: quantityInfo ?? this.quantityInfo,
        url: url ?? this.url,
        image: image ?? this.image,
      );

  factory FeaturedProductElement.fromJson(String str) =>
      FeaturedProductElement.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FeaturedProductElement.fromMap(Map<String, dynamic> json) =>
      FeaturedProductElement(
        id: json["id"],
        quantity: json["quantity"],
        title: json["title"],
        description: json["description"],
        avgRating: json["avg_rating"],
        oldPrice: json["old_price"],
        price: json["price"],
        discountName: json["discount_name"],
        isVeg: json["is_veg"],
        time: json["time"],
        shortDescription: json["short_description"],
        quantityInfo: json["quantity_info"],
        url: json["url"],
        image: json["image"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "quantity": quantity,
        "title": title,
        "description": description,
        "avg_rating": avgRating,
        "old_price": oldPrice,
        "price": price,
        "discount_name": discountName,
        "is_veg": isVeg,
        "time": time,
        "short_description": shortDescription,
        "quantity_info": quantityInfo,
        "url": url,
        "image": image,
      };
}

class GetCategory {
  GetCategory({
    @required this.id,
    @required this.name,
    @required this.image,
    @required this.subcategory,
  });

  String id;
  String name;
  String image;
  List<Category> subcategory;

  GetCategory copyWith({
    String id,
    String name,
    String image,
    List<Category> subcategory,
  }) =>
      GetCategory(
        id: id ?? this.id,
        name: name ?? this.name,
        image: image ?? this.image,
        subcategory: subcategory ?? this.subcategory,
      );

  factory GetCategory.fromJson(String str) =>
      GetCategory.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GetCategory.fromMap(Map<String, dynamic> json) => GetCategory(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        subcategory: List<Category>.from(
            json["subcategory"].map((x) => Category.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "image": image,
        "subcategory": List<dynamic>.from(subcategory.map((x) => x.toMap())),
      };
}

class Category {
  Category({
    @required this.id,
    @required this.name,
    @required this.parentId,
    @required this.image,
    @required this.subsubcategory,
  });

  String id;
  String name;
  String parentId;
  String image;
  List<Category> subsubcategory;

  Category copyWith({
    String id,
    String name,
    String parentId,
    String image,
    List<Category> subsubcategory,
  }) =>
      Category(
        id: id ?? this.id,
        name: name ?? this.name,
        parentId: parentId ?? this.parentId,
        image: image ?? this.image,
        subsubcategory: subsubcategory ?? this.subsubcategory,
      );

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        parentId: json["parent_id"] == null ? null : json["parent_id"],
        image: json["image"],
        subsubcategory: json["subsubcategory"] == null
            ? null
            : List<Category>.from(
                json["subsubcategory"].map((x) => Category.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "parent_id": parentId == null ? null : parentId,
        "image": image,
        "subsubcategory": subsubcategory == null
            ? null
            : List<dynamic>.from(subsubcategory.map((x) => x.toMap())),
      };
}
