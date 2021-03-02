// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

// ignore: unused_element
  _Product call(
      {@required
          String id,
      @required
          String quantity,
      @required
          String title,
      @required
          String description,
      @required
      @JsonKey(name: 'avg_rating', defaultValue: '0')
          dynamic avgRating,
      @required
      @JsonKey(name: 'old_price')
          String oldPrice,
      @required
          String price,
      @required
      @JsonKey(name: 'discount_name')
          String discountName,
      @required
      @JsonKey(name: 'is_veg')
          String isVeg,
      @required
          String time,
      @required
      @JsonKey(name: 'short_description')
          String shortDescription,
      @required
      @JsonKey(name: 'quantity_info')
          String quantityInfo,
      @required
          String url,
      @required
          String image}) {
    return _Product(
      id: id,
      quantity: quantity,
      title: title,
      description: description,
      avgRating: avgRating,
      oldPrice: oldPrice,
      price: price,
      discountName: discountName,
      isVeg: isVeg,
      time: time,
      shortDescription: shortDescription,
      quantityInfo: quantityInfo,
      url: url,
      image: image,
    );
  }

// ignore: unused_element
  Product fromJson(Map<String, Object> json) {
    return Product.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  String get id;
  String get quantity;
  String get title;
  String get description;
  @JsonKey(name: 'avg_rating', defaultValue: '0')
  dynamic get avgRating;
  @JsonKey(name: 'old_price')
  String get oldPrice;
  String get price;
  @JsonKey(name: 'discount_name')
  String get discountName;
  @JsonKey(name: 'is_veg')
  String get isVeg;
  String get time;
  @JsonKey(name: 'short_description')
  String get shortDescription;
  @JsonKey(name: 'quantity_info')
  String get quantityInfo;
  String get url;
  String get image;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String quantity,
      String title,
      String description,
      @JsonKey(name: 'avg_rating', defaultValue: '0') dynamic avgRating,
      @JsonKey(name: 'old_price') String oldPrice,
      String price,
      @JsonKey(name: 'discount_name') String discountName,
      @JsonKey(name: 'is_veg') String isVeg,
      String time,
      @JsonKey(name: 'short_description') String shortDescription,
      @JsonKey(name: 'quantity_info') String quantityInfo,
      String url,
      String image});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object id = freezed,
    Object quantity = freezed,
    Object title = freezed,
    Object description = freezed,
    Object avgRating = freezed,
    Object oldPrice = freezed,
    Object price = freezed,
    Object discountName = freezed,
    Object isVeg = freezed,
    Object time = freezed,
    Object shortDescription = freezed,
    Object quantityInfo = freezed,
    Object url = freezed,
    Object image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      quantity: quantity == freezed ? _value.quantity : quantity as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      avgRating: avgRating == freezed ? _value.avgRating : avgRating as dynamic,
      oldPrice: oldPrice == freezed ? _value.oldPrice : oldPrice as String,
      price: price == freezed ? _value.price : price as String,
      discountName: discountName == freezed
          ? _value.discountName
          : discountName as String,
      isVeg: isVeg == freezed ? _value.isVeg : isVeg as String,
      time: time == freezed ? _value.time : time as String,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription as String,
      quantityInfo: quantityInfo == freezed
          ? _value.quantityInfo
          : quantityInfo as String,
      url: url == freezed ? _value.url : url as String,
      image: image == freezed ? _value.image : image as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String quantity,
      String title,
      String description,
      @JsonKey(name: 'avg_rating', defaultValue: '0') dynamic avgRating,
      @JsonKey(name: 'old_price') String oldPrice,
      String price,
      @JsonKey(name: 'discount_name') String discountName,
      @JsonKey(name: 'is_veg') String isVeg,
      String time,
      @JsonKey(name: 'short_description') String shortDescription,
      @JsonKey(name: 'quantity_info') String quantityInfo,
      String url,
      String image});
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object id = freezed,
    Object quantity = freezed,
    Object title = freezed,
    Object description = freezed,
    Object avgRating = freezed,
    Object oldPrice = freezed,
    Object price = freezed,
    Object discountName = freezed,
    Object isVeg = freezed,
    Object time = freezed,
    Object shortDescription = freezed,
    Object quantityInfo = freezed,
    Object url = freezed,
    Object image = freezed,
  }) {
    return _then(_Product(
      id: id == freezed ? _value.id : id as String,
      quantity: quantity == freezed ? _value.quantity : quantity as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      avgRating: avgRating == freezed ? _value.avgRating : avgRating as dynamic,
      oldPrice: oldPrice == freezed ? _value.oldPrice : oldPrice as String,
      price: price == freezed ? _value.price : price as String,
      discountName: discountName == freezed
          ? _value.discountName
          : discountName as String,
      isVeg: isVeg == freezed ? _value.isVeg : isVeg as String,
      time: time == freezed ? _value.time : time as String,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription as String,
      quantityInfo: quantityInfo == freezed
          ? _value.quantityInfo
          : quantityInfo as String,
      url: url == freezed ? _value.url : url as String,
      image: image == freezed ? _value.image : image as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Product implements _Product {
  const _$_Product(
      {@required this.id,
      @required this.quantity,
      @required this.title,
      @required this.description,
      @required @JsonKey(name: 'avg_rating', defaultValue: '0') this.avgRating,
      @required @JsonKey(name: 'old_price') this.oldPrice,
      @required this.price,
      @required @JsonKey(name: 'discount_name') this.discountName,
      @required @JsonKey(name: 'is_veg') this.isVeg,
      @required this.time,
      @required @JsonKey(name: 'short_description') this.shortDescription,
      @required @JsonKey(name: 'quantity_info') this.quantityInfo,
      @required this.url,
      @required this.image})
      : assert(id != null),
        assert(quantity != null),
        assert(title != null),
        assert(description != null),
        assert(avgRating != null),
        assert(oldPrice != null),
        assert(price != null),
        assert(discountName != null),
        assert(isVeg != null),
        assert(time != null),
        assert(shortDescription != null),
        assert(quantityInfo != null),
        assert(url != null),
        assert(image != null);

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductFromJson(json);

  @override
  final String id;
  @override
  final String quantity;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'avg_rating', defaultValue: '0')
  final dynamic avgRating;
  @override
  @JsonKey(name: 'old_price')
  final String oldPrice;
  @override
  final String price;
  @override
  @JsonKey(name: 'discount_name')
  final String discountName;
  @override
  @JsonKey(name: 'is_veg')
  final String isVeg;
  @override
  final String time;
  @override
  @JsonKey(name: 'short_description')
  final String shortDescription;
  @override
  @JsonKey(name: 'quantity_info')
  final String quantityInfo;
  @override
  final String url;
  @override
  final String image;

  @override
  String toString() {
    return 'Product(id: $id, quantity: $quantity, title: $title, description: $description, avgRating: $avgRating, oldPrice: $oldPrice, price: $price, discountName: $discountName, isVeg: $isVeg, time: $time, shortDescription: $shortDescription, quantityInfo: $quantityInfo, url: $url, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Product &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.avgRating, avgRating) ||
                const DeepCollectionEquality()
                    .equals(other.avgRating, avgRating)) &&
            (identical(other.oldPrice, oldPrice) ||
                const DeepCollectionEquality()
                    .equals(other.oldPrice, oldPrice)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.discountName, discountName) ||
                const DeepCollectionEquality()
                    .equals(other.discountName, discountName)) &&
            (identical(other.isVeg, isVeg) ||
                const DeepCollectionEquality().equals(other.isVeg, isVeg)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.shortDescription, shortDescription) ||
                const DeepCollectionEquality()
                    .equals(other.shortDescription, shortDescription)) &&
            (identical(other.quantityInfo, quantityInfo) ||
                const DeepCollectionEquality()
                    .equals(other.quantityInfo, quantityInfo)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(avgRating) ^
      const DeepCollectionEquality().hash(oldPrice) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(discountName) ^
      const DeepCollectionEquality().hash(isVeg) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(shortDescription) ^
      const DeepCollectionEquality().hash(quantityInfo) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductToJson(this);
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@required
          String id,
      @required
          String quantity,
      @required
          String title,
      @required
          String description,
      @required
      @JsonKey(name: 'avg_rating', defaultValue: '0')
          dynamic avgRating,
      @required
      @JsonKey(name: 'old_price')
          String oldPrice,
      @required
          String price,
      @required
      @JsonKey(name: 'discount_name')
          String discountName,
      @required
      @JsonKey(name: 'is_veg')
          String isVeg,
      @required
          String time,
      @required
      @JsonKey(name: 'short_description')
          String shortDescription,
      @required
      @JsonKey(name: 'quantity_info')
          String quantityInfo,
      @required
          String url,
      @required
          String image}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  String get id;
  @override
  String get quantity;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'avg_rating', defaultValue: '0')
  dynamic get avgRating;
  @override
  @JsonKey(name: 'old_price')
  String get oldPrice;
  @override
  String get price;
  @override
  @JsonKey(name: 'discount_name')
  String get discountName;
  @override
  @JsonKey(name: 'is_veg')
  String get isVeg;
  @override
  String get time;
  @override
  @JsonKey(name: 'short_description')
  String get shortDescription;
  @override
  @JsonKey(name: 'quantity_info')
  String get quantityInfo;
  @override
  String get url;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith;
}
