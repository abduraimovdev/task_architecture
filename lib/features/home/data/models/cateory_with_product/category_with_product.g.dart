// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_with_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryWithProductImpl _$$CategoryWithProductImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryWithProductImpl(
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      categoryName: json['categoryName'] as String,
    );

Map<String, dynamic> _$$CategoryWithProductImplToJson(
        _$CategoryWithProductImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
      'categoryName': instance.categoryName,
    };
