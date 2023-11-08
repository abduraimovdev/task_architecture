import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/converters/datetime_converter.dart';

part 'product.g.dart';
part 'product.freezed.dart';


@freezed
class Product with _$Product {

  const factory Product({
    String? productId,
    String? productName,
    String? productDescription,
    num? productPrice,
    String? productType,
     DateTime? createdAt,
     DateTime? updatedAt,
    bool? likedProduct,
    List<String>? images,
    String? genderType,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

}