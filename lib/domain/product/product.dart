import 'package:freezed_annotation/freezed_annotation.dart';
part 'product.g.dart';
part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    String id,
    String quantity,
    String title,
    String description,
    @JsonKey(name: 'avg_rating', defaultValue: '0') String avgRating,
    @JsonKey(name: 'old_price') String oldPrice,
    String price,
    @JsonKey(name: 'discount_name') String discountName,
    String image,
  }) = _Product;
  //to create toJson  and fromJson using Json Serialiable
  //also add part 'product.g.dart';
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
