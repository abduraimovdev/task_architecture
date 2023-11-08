import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../cart_item/cart_item.dart';

part 'cart.freezed.dart';

part 'cart.g.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    required String id,
    @Default(<CartItem>[]) List<CartItem> items,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}
