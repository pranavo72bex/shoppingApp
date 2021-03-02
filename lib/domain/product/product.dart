import 'package:freezed_annotation/freezed_annotation.dart';
part 'product.g.dart';
part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    @required String id,
    @required String quantity,
    @required String title,
    @required String description,
    @JsonKey(name: 'avg_rating', defaultValue: '0') @required dynamic avgRating,
    @JsonKey(name: 'old_price') @required String oldPrice,
    @required String price,
    @JsonKey(name: 'discount_name') @required String discountName,
    @JsonKey(name: 'is_veg') @required String isVeg,
    @required String time,
    @JsonKey(name: 'short_description') @required String shortDescription,
    @JsonKey(name: 'quantity_info') @required String quantityInfo,
    @required String url,
    @required String image,
  }) = _Product;
  //to create toJson  and fromJson using Json Serialiable
  //also add part 'product.g.dart';
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
