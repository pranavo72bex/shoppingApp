// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$_$_ProductFromJson(Map<String, dynamic> json) {
  return _$_Product(
    id: json['id'] as String,
    quantity: json['quantity'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    avgRating: json['avg_rating'] as String ?? '0',
    oldPrice: json['old_price'] as String,
    price: json['price'] as String,
    discountName: json['discount_name'] as String,
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$_$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'title': instance.title,
      'description': instance.description,
      'avg_rating': instance.avgRating,
      'old_price': instance.oldPrice,
      'price': instance.price,
      'discount_name': instance.discountName,
      'image': instance.image,
    };
