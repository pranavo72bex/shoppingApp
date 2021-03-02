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
    avgRating: json['avg_rating'] ?? '0',
    oldPrice: json['old_price'] as String,
    price: json['price'] as String,
    discountName: json['discount_name'] as String,
    isVeg: json['is_veg'] as String,
    time: json['time'] as String,
    shortDescription: json['short_description'] as String,
    quantityInfo: json['quantity_info'] as String,
    url: json['url'] as String,
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
      'is_veg': instance.isVeg,
      'time': instance.time,
      'short_description': instance.shortDescription,
      'quantity_info': instance.quantityInfo,
      'url': instance.url,
      'image': instance.image,
    };
