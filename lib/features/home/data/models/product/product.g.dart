// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      productId: json['productId'] as String?,
      productName: json['productName'] as String?,
      productDescription: json['productDescription'] as String?,
      productPrice: json['productPrice'] as num?,
      productType: json['productType'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      likedProduct: json['likedProduct'] as bool?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      genderType: json['genderType'] as String?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'productPrice': instance.productPrice,
      'productType': instance.productType,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'likedProduct': instance.likedProduct,
      'images': instance.images,
      'genderType': instance.genderType,
    };
