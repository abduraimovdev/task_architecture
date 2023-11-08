import 'package:freezed_annotation/freezed_annotation.dart';

import '../product/product.dart';

part 'category_with_product.g.dart';

part 'category_with_product.freezed.dart';

@freezed
sealed class CategoryWithProduct with _$CategoryWithProduct {


  const factory CategoryWithProduct({
required List<Product> products,
required String categoryName,
  }) = _CategoryWithProduct;

  factory CategoryWithProduct.fromJson(Map<String, dynamic> json) =>
      _$CategoryWithProductFromJson(json);
}
