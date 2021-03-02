// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'dashboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Dashboard _$DashboardFromJson(Map<String, dynamic> json) {
  return _Dashboard.fromJson(json);
}

/// @nodoc
class _$DashboardTearOff {
  const _$DashboardTearOff();

// ignore: unused_element
  _Dashboard call(
      {@required int responseCode,
      @required String responseMessage,
      @required List<Product> saleProducts,
      @required List<Product> featuredProducts,
      @required List<Product> topProducts,
      @required List<MainCategory> getCategory,
      @required List<Brand> brands,
      @required List<Brand> slider,
      @required List<Category> shopByCategory,
      @required List<Banner> banner}) {
    return _Dashboard(
      responseCode: responseCode,
      responseMessage: responseMessage,
      saleProducts: saleProducts,
      featuredProducts: featuredProducts,
      topProducts: topProducts,
      getCategory: getCategory,
      brands: brands,
      slider: slider,
      shopByCategory: shopByCategory,
      banner: banner,
    );
  }

// ignore: unused_element
  Dashboard fromJson(Map<String, Object> json) {
    return Dashboard.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Dashboard = _$DashboardTearOff();

/// @nodoc
mixin _$Dashboard {
  int get responseCode;
  String get responseMessage;
  List<Product> get saleProducts;
  List<Product> get featuredProducts;
  List<Product> get topProducts;
  List<MainCategory> get getCategory;
  List<Brand> get brands;
  List<Brand> get slider;
  List<Category> get shopByCategory;
  List<Banner> get banner;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $DashboardCopyWith<Dashboard> get copyWith;
}

/// @nodoc
abstract class $DashboardCopyWith<$Res> {
  factory $DashboardCopyWith(Dashboard value, $Res Function(Dashboard) then) =
      _$DashboardCopyWithImpl<$Res>;
  $Res call(
      {int responseCode,
      String responseMessage,
      List<Product> saleProducts,
      List<Product> featuredProducts,
      List<Product> topProducts,
      List<MainCategory> getCategory,
      List<Brand> brands,
      List<Brand> slider,
      List<Category> shopByCategory,
      List<Banner> banner});
}

/// @nodoc
class _$DashboardCopyWithImpl<$Res> implements $DashboardCopyWith<$Res> {
  _$DashboardCopyWithImpl(this._value, this._then);

  final Dashboard _value;
  // ignore: unused_field
  final $Res Function(Dashboard) _then;

  @override
  $Res call({
    Object responseCode = freezed,
    Object responseMessage = freezed,
    Object saleProducts = freezed,
    Object featuredProducts = freezed,
    Object topProducts = freezed,
    Object getCategory = freezed,
    Object brands = freezed,
    Object slider = freezed,
    Object shopByCategory = freezed,
    Object banner = freezed,
  }) {
    return _then(_value.copyWith(
      responseCode:
          responseCode == freezed ? _value.responseCode : responseCode as int,
      responseMessage: responseMessage == freezed
          ? _value.responseMessage
          : responseMessage as String,
      saleProducts: saleProducts == freezed
          ? _value.saleProducts
          : saleProducts as List<Product>,
      featuredProducts: featuredProducts == freezed
          ? _value.featuredProducts
          : featuredProducts as List<Product>,
      topProducts: topProducts == freezed
          ? _value.topProducts
          : topProducts as List<Product>,
      getCategory: getCategory == freezed
          ? _value.getCategory
          : getCategory as List<MainCategory>,
      brands: brands == freezed ? _value.brands : brands as List<Brand>,
      slider: slider == freezed ? _value.slider : slider as List<Brand>,
      shopByCategory: shopByCategory == freezed
          ? _value.shopByCategory
          : shopByCategory as List<Category>,
      banner: banner == freezed ? _value.banner : banner as List<Banner>,
    ));
  }
}

/// @nodoc
abstract class _$DashboardCopyWith<$Res> implements $DashboardCopyWith<$Res> {
  factory _$DashboardCopyWith(
          _Dashboard value, $Res Function(_Dashboard) then) =
      __$DashboardCopyWithImpl<$Res>;
  @override
  $Res call(
      {int responseCode,
      String responseMessage,
      List<Product> saleProducts,
      List<Product> featuredProducts,
      List<Product> topProducts,
      List<MainCategory> getCategory,
      List<Brand> brands,
      List<Brand> slider,
      List<Category> shopByCategory,
      List<Banner> banner});
}

/// @nodoc
class __$DashboardCopyWithImpl<$Res> extends _$DashboardCopyWithImpl<$Res>
    implements _$DashboardCopyWith<$Res> {
  __$DashboardCopyWithImpl(_Dashboard _value, $Res Function(_Dashboard) _then)
      : super(_value, (v) => _then(v as _Dashboard));

  @override
  _Dashboard get _value => super._value as _Dashboard;

  @override
  $Res call({
    Object responseCode = freezed,
    Object responseMessage = freezed,
    Object saleProducts = freezed,
    Object featuredProducts = freezed,
    Object topProducts = freezed,
    Object getCategory = freezed,
    Object brands = freezed,
    Object slider = freezed,
    Object shopByCategory = freezed,
    Object banner = freezed,
  }) {
    return _then(_Dashboard(
      responseCode:
          responseCode == freezed ? _value.responseCode : responseCode as int,
      responseMessage: responseMessage == freezed
          ? _value.responseMessage
          : responseMessage as String,
      saleProducts: saleProducts == freezed
          ? _value.saleProducts
          : saleProducts as List<Product>,
      featuredProducts: featuredProducts == freezed
          ? _value.featuredProducts
          : featuredProducts as List<Product>,
      topProducts: topProducts == freezed
          ? _value.topProducts
          : topProducts as List<Product>,
      getCategory: getCategory == freezed
          ? _value.getCategory
          : getCategory as List<MainCategory>,
      brands: brands == freezed ? _value.brands : brands as List<Brand>,
      slider: slider == freezed ? _value.slider : slider as List<Brand>,
      shopByCategory: shopByCategory == freezed
          ? _value.shopByCategory
          : shopByCategory as List<Category>,
      banner: banner == freezed ? _value.banner : banner as List<Banner>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Dashboard implements _Dashboard {
  const _$_Dashboard(
      {@required this.responseCode,
      @required this.responseMessage,
      @required this.saleProducts,
      @required this.featuredProducts,
      @required this.topProducts,
      @required this.getCategory,
      @required this.brands,
      @required this.slider,
      @required this.shopByCategory,
      @required this.banner})
      : assert(responseCode != null),
        assert(responseMessage != null),
        assert(saleProducts != null),
        assert(featuredProducts != null),
        assert(topProducts != null),
        assert(getCategory != null),
        assert(brands != null),
        assert(slider != null),
        assert(shopByCategory != null),
        assert(banner != null);

  factory _$_Dashboard.fromJson(Map<String, dynamic> json) =>
      _$_$_DashboardFromJson(json);

  @override
  final int responseCode;
  @override
  final String responseMessage;
  @override
  final List<Product> saleProducts;
  @override
  final List<Product> featuredProducts;
  @override
  final List<Product> topProducts;
  @override
  final List<MainCategory> getCategory;
  @override
  final List<Brand> brands;
  @override
  final List<Brand> slider;
  @override
  final List<Category> shopByCategory;
  @override
  final List<Banner> banner;

  @override
  String toString() {
    return 'Dashboard(responseCode: $responseCode, responseMessage: $responseMessage, saleProducts: $saleProducts, featuredProducts: $featuredProducts, topProducts: $topProducts, getCategory: $getCategory, brands: $brands, slider: $slider, shopByCategory: $shopByCategory, banner: $banner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Dashboard &&
            (identical(other.responseCode, responseCode) ||
                const DeepCollectionEquality()
                    .equals(other.responseCode, responseCode)) &&
            (identical(other.responseMessage, responseMessage) ||
                const DeepCollectionEquality()
                    .equals(other.responseMessage, responseMessage)) &&
            (identical(other.saleProducts, saleProducts) ||
                const DeepCollectionEquality()
                    .equals(other.saleProducts, saleProducts)) &&
            (identical(other.featuredProducts, featuredProducts) ||
                const DeepCollectionEquality()
                    .equals(other.featuredProducts, featuredProducts)) &&
            (identical(other.topProducts, topProducts) ||
                const DeepCollectionEquality()
                    .equals(other.topProducts, topProducts)) &&
            (identical(other.getCategory, getCategory) ||
                const DeepCollectionEquality()
                    .equals(other.getCategory, getCategory)) &&
            (identical(other.brands, brands) ||
                const DeepCollectionEquality().equals(other.brands, brands)) &&
            (identical(other.slider, slider) ||
                const DeepCollectionEquality().equals(other.slider, slider)) &&
            (identical(other.shopByCategory, shopByCategory) ||
                const DeepCollectionEquality()
                    .equals(other.shopByCategory, shopByCategory)) &&
            (identical(other.banner, banner) ||
                const DeepCollectionEquality().equals(other.banner, banner)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(responseCode) ^
      const DeepCollectionEquality().hash(responseMessage) ^
      const DeepCollectionEquality().hash(saleProducts) ^
      const DeepCollectionEquality().hash(featuredProducts) ^
      const DeepCollectionEquality().hash(topProducts) ^
      const DeepCollectionEquality().hash(getCategory) ^
      const DeepCollectionEquality().hash(brands) ^
      const DeepCollectionEquality().hash(slider) ^
      const DeepCollectionEquality().hash(shopByCategory) ^
      const DeepCollectionEquality().hash(banner);

  @JsonKey(ignore: true)
  @override
  _$DashboardCopyWith<_Dashboard> get copyWith =>
      __$DashboardCopyWithImpl<_Dashboard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DashboardToJson(this);
  }
}

abstract class _Dashboard implements Dashboard {
  const factory _Dashboard(
      {@required int responseCode,
      @required String responseMessage,
      @required List<Product> saleProducts,
      @required List<Product> featuredProducts,
      @required List<Product> topProducts,
      @required List<MainCategory> getCategory,
      @required List<Brand> brands,
      @required List<Brand> slider,
      @required List<Category> shopByCategory,
      @required List<Banner> banner}) = _$_Dashboard;

  factory _Dashboard.fromJson(Map<String, dynamic> json) =
      _$_Dashboard.fromJson;

  @override
  int get responseCode;
  @override
  String get responseMessage;
  @override
  List<Product> get saleProducts;
  @override
  List<Product> get featuredProducts;
  @override
  List<Product> get topProducts;
  @override
  List<MainCategory> get getCategory;
  @override
  List<Brand> get brands;
  @override
  List<Brand> get slider;
  @override
  List<Category> get shopByCategory;
  @override
  List<Banner> get banner;
  @override
  @JsonKey(ignore: true)
  _$DashboardCopyWith<_Dashboard> get copyWith;
}

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return _Brand.fromJson(json);
}

/// @nodoc
class _$BrandTearOff {
  const _$BrandTearOff();

// ignore: unused_element
  _Brand call({@required String id, @required String image}) {
    return _Brand(
      id: id,
      image: image,
    );
  }

// ignore: unused_element
  Brand fromJson(Map<String, Object> json) {
    return Brand.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Brand = _$BrandTearOff();

/// @nodoc
mixin _$Brand {
  String get id;
  String get image;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $BrandCopyWith<Brand> get copyWith;
}

/// @nodoc
abstract class $BrandCopyWith<$Res> {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) then) =
      _$BrandCopyWithImpl<$Res>;
  $Res call({String id, String image});
}

/// @nodoc
class _$BrandCopyWithImpl<$Res> implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._value, this._then);

  final Brand _value;
  // ignore: unused_field
  final $Res Function(Brand) _then;

  @override
  $Res call({
    Object id = freezed,
    Object image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      image: image == freezed ? _value.image : image as String,
    ));
  }
}

/// @nodoc
abstract class _$BrandCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$BrandCopyWith(_Brand value, $Res Function(_Brand) then) =
      __$BrandCopyWithImpl<$Res>;
  @override
  $Res call({String id, String image});
}

/// @nodoc
class __$BrandCopyWithImpl<$Res> extends _$BrandCopyWithImpl<$Res>
    implements _$BrandCopyWith<$Res> {
  __$BrandCopyWithImpl(_Brand _value, $Res Function(_Brand) _then)
      : super(_value, (v) => _then(v as _Brand));

  @override
  _Brand get _value => super._value as _Brand;

  @override
  $Res call({
    Object id = freezed,
    Object image = freezed,
  }) {
    return _then(_Brand(
      id: id == freezed ? _value.id : id as String,
      image: image == freezed ? _value.image : image as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Brand implements _Brand {
  const _$_Brand({@required this.id, @required this.image})
      : assert(id != null),
        assert(image != null);

  factory _$_Brand.fromJson(Map<String, dynamic> json) =>
      _$_$_BrandFromJson(json);

  @override
  final String id;
  @override
  final String image;

  @override
  String toString() {
    return 'Brand(id: $id, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Brand &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$BrandCopyWith<_Brand> get copyWith =>
      __$BrandCopyWithImpl<_Brand>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BrandToJson(this);
  }
}

abstract class _Brand implements Brand {
  const factory _Brand({@required String id, @required String image}) =
      _$_Brand;

  factory _Brand.fromJson(Map<String, dynamic> json) = _$_Brand.fromJson;

  @override
  String get id;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$BrandCopyWith<_Brand> get copyWith;
}

MainCategory _$MainCategoryFromJson(Map<String, dynamic> json) {
  return _MainCategory.fromJson(json);
}

/// @nodoc
class _$MainCategoryTearOff {
  const _$MainCategoryTearOff();

// ignore: unused_element
  _MainCategory call(
      {@required String id, @required String name, @required String image}) {
    return _MainCategory(
      id: id,
      name: name,
      image: image,
    );
  }

// ignore: unused_element
  MainCategory fromJson(Map<String, Object> json) {
    return MainCategory.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MainCategory = _$MainCategoryTearOff();

/// @nodoc
mixin _$MainCategory {
  String get id;
  String get name;
  String get image;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MainCategoryCopyWith<MainCategory> get copyWith;
}

/// @nodoc
abstract class $MainCategoryCopyWith<$Res> {
  factory $MainCategoryCopyWith(
          MainCategory value, $Res Function(MainCategory) then) =
      _$MainCategoryCopyWithImpl<$Res>;
  $Res call({String id, String name, String image});
}

/// @nodoc
class _$MainCategoryCopyWithImpl<$Res> implements $MainCategoryCopyWith<$Res> {
  _$MainCategoryCopyWithImpl(this._value, this._then);

  final MainCategory _value;
  // ignore: unused_field
  final $Res Function(MainCategory) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      image: image == freezed ? _value.image : image as String,
    ));
  }
}

/// @nodoc
abstract class _$MainCategoryCopyWith<$Res>
    implements $MainCategoryCopyWith<$Res> {
  factory _$MainCategoryCopyWith(
          _MainCategory value, $Res Function(_MainCategory) then) =
      __$MainCategoryCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String image});
}

/// @nodoc
class __$MainCategoryCopyWithImpl<$Res> extends _$MainCategoryCopyWithImpl<$Res>
    implements _$MainCategoryCopyWith<$Res> {
  __$MainCategoryCopyWithImpl(
      _MainCategory _value, $Res Function(_MainCategory) _then)
      : super(_value, (v) => _then(v as _MainCategory));

  @override
  _MainCategory get _value => super._value as _MainCategory;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object image = freezed,
  }) {
    return _then(_MainCategory(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      image: image == freezed ? _value.image : image as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MainCategory implements _MainCategory {
  const _$_MainCategory(
      {@required this.id, @required this.name, @required this.image})
      : assert(id != null),
        assert(name != null),
        assert(image != null);

  factory _$_MainCategory.fromJson(Map<String, dynamic> json) =>
      _$_$_MainCategoryFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String image;

  @override
  String toString() {
    return 'MainCategory(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$MainCategoryCopyWith<_MainCategory> get copyWith =>
      __$MainCategoryCopyWithImpl<_MainCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MainCategoryToJson(this);
  }
}

abstract class _MainCategory implements MainCategory {
  const factory _MainCategory(
      {@required String id,
      @required String name,
      @required String image}) = _$_MainCategory;

  factory _MainCategory.fromJson(Map<String, dynamic> json) =
      _$_MainCategory.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$MainCategoryCopyWith<_MainCategory> get copyWith;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
class _$CategoryTearOff {
  const _$CategoryTearOff();

// ignore: unused_element
  _Category call(
      {@required String id,
      @required String name,
      @required String image,
      String parentId,
      List<Category> subsubcategory}) {
    return _Category(
      id: id,
      name: name,
      image: image,
      parentId: parentId,
      subsubcategory: subsubcategory,
    );
  }

// ignore: unused_element
  Category fromJson(Map<String, Object> json) {
    return Category.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Category = _$CategoryTearOff();

/// @nodoc
mixin _$Category {
  String get id;
  String get name;
  String get image;
  String get parentId; //not required since subcategories don't have parentId
  List<Category> get subsubcategory;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String image,
      String parentId,
      List<Category> subsubcategory});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  final Category _value;
  // ignore: unused_field
  final $Res Function(Category) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object image = freezed,
    Object parentId = freezed,
    Object subsubcategory = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      image: image == freezed ? _value.image : image as String,
      parentId: parentId == freezed ? _value.parentId : parentId as String,
      subsubcategory: subsubcategory == freezed
          ? _value.subsubcategory
          : subsubcategory as List<Category>,
    ));
  }
}

/// @nodoc
abstract class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) then) =
      __$CategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String image,
      String parentId,
      List<Category> subsubcategory});
}

/// @nodoc
class __$CategoryCopyWithImpl<$Res> extends _$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(_Category _value, $Res Function(_Category) _then)
      : super(_value, (v) => _then(v as _Category));

  @override
  _Category get _value => super._value as _Category;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object image = freezed,
    Object parentId = freezed,
    Object subsubcategory = freezed,
  }) {
    return _then(_Category(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      image: image == freezed ? _value.image : image as String,
      parentId: parentId == freezed ? _value.parentId : parentId as String,
      subsubcategory: subsubcategory == freezed
          ? _value.subsubcategory
          : subsubcategory as List<Category>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Category implements _Category {
  const _$_Category(
      {@required this.id,
      @required this.name,
      @required this.image,
      this.parentId,
      this.subsubcategory})
      : assert(id != null),
        assert(name != null),
        assert(image != null);

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$_$_CategoryFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String image;
  @override
  final String parentId;
  @override //not required since subcategories don't have parentId
  final List<Category> subsubcategory;

  @override
  String toString() {
    return 'Category(id: $id, name: $name, image: $image, parentId: $parentId, subsubcategory: $subsubcategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Category &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.subsubcategory, subsubcategory) ||
                const DeepCollectionEquality()
                    .equals(other.subsubcategory, subsubcategory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(subsubcategory);

  @JsonKey(ignore: true)
  @override
  _$CategoryCopyWith<_Category> get copyWith =>
      __$CategoryCopyWithImpl<_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CategoryToJson(this);
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {@required String id,
      @required String name,
      @required String image,
      String parentId,
      List<Category> subsubcategory}) = _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get image;
  @override
  String get parentId;
  @override //not required since subcategories don't have parentId
  List<Category> get subsubcategory;
  @override
  @JsonKey(ignore: true)
  _$CategoryCopyWith<_Category> get copyWith;
}

Banner _$BannerFromJson(Map<String, dynamic> json) {
  return _Banner.fromJson(json);
}

/// @nodoc
class _$BannerTearOff {
  const _$BannerTearOff();

// ignore: unused_element
  _Banner call(
      {@required String id, @required String title, @required String image}) {
    return _Banner(
      id: id,
      title: title,
      image: image,
    );
  }

// ignore: unused_element
  Banner fromJson(Map<String, Object> json) {
    return Banner.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Banner = _$BannerTearOff();

/// @nodoc
mixin _$Banner {
  String get id;
  String get title;
  String get image;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $BannerCopyWith<Banner> get copyWith;
}

/// @nodoc
abstract class $BannerCopyWith<$Res> {
  factory $BannerCopyWith(Banner value, $Res Function(Banner) then) =
      _$BannerCopyWithImpl<$Res>;
  $Res call({String id, String title, String image});
}

/// @nodoc
class _$BannerCopyWithImpl<$Res> implements $BannerCopyWith<$Res> {
  _$BannerCopyWithImpl(this._value, this._then);

  final Banner _value;
  // ignore: unused_field
  final $Res Function(Banner) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      image: image == freezed ? _value.image : image as String,
    ));
  }
}

/// @nodoc
abstract class _$BannerCopyWith<$Res> implements $BannerCopyWith<$Res> {
  factory _$BannerCopyWith(_Banner value, $Res Function(_Banner) then) =
      __$BannerCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String image});
}

/// @nodoc
class __$BannerCopyWithImpl<$Res> extends _$BannerCopyWithImpl<$Res>
    implements _$BannerCopyWith<$Res> {
  __$BannerCopyWithImpl(_Banner _value, $Res Function(_Banner) _then)
      : super(_value, (v) => _then(v as _Banner));

  @override
  _Banner get _value => super._value as _Banner;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object image = freezed,
  }) {
    return _then(_Banner(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      image: image == freezed ? _value.image : image as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Banner implements _Banner {
  const _$_Banner(
      {@required this.id, @required this.title, @required this.image})
      : assert(id != null),
        assert(title != null),
        assert(image != null);

  factory _$_Banner.fromJson(Map<String, dynamic> json) =>
      _$_$_BannerFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String image;

  @override
  String toString() {
    return 'Banner(id: $id, title: $title, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Banner &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$BannerCopyWith<_Banner> get copyWith =>
      __$BannerCopyWithImpl<_Banner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BannerToJson(this);
  }
}

abstract class _Banner implements Banner {
  const factory _Banner(
      {@required String id,
      @required String title,
      @required String image}) = _$_Banner;

  factory _Banner.fromJson(Map<String, dynamic> json) = _$_Banner.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$BannerCopyWith<_Banner> get copyWith;
}
