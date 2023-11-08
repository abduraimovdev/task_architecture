import 'package:freezed_annotation/freezed_annotation.dart';

import '../product/product.dart';

part 'product_response.g.dart';

part 'product_response.freezed.dart';

@freezed
class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    List<Product>? products,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}
