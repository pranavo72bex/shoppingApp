import 'package:freezed_annotation/freezed_annotation.dart';
part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    String id,
    String quantity,
    String title,
    String description,
    @JsonKey(name: 'avg_rating') String avgRating,
    @JsonKey(name: 'old_price') String oldPrice,
    String price,
    @JsonKey(name: 'discount_name') String discountName,
    String image,
  }) = _Product;
}
