// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartItemImpl _$$CartItemImplFromJson(Map<String, dynamic> json) =>
    _$CartItemImpl(
      id: json['id'] as String,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      productCount: json['productCount'] as int,
      totalPrice: json['totalPrice'] as num,
    );

Map<String, dynamic> _$$CartItemImplToJson(_$CartItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'productCount': instance.productCount,
      'totalPrice': instance.totalPrice,
    };
