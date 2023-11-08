// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_with_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryWithProduct _$CategoryWithProductFromJson(Map<String, dynamic> json) {
  return _CategoryWithProduct.fromJson(json);
}

/// @nodoc
mixin _$CategoryWithProduct {
  List<Product> get products => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryWithProductCopyWith<CategoryWithProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryWithProductCopyWith<$Res> {
  factory $CategoryWithProductCopyWith(
          CategoryWithProduct value, $Res Function(CategoryWithProduct) then) =
      _$CategoryWithProductCopyWithImpl<$Res, CategoryWithProduct>;
  @useResult
  $Res call({List<Product> products, String categoryName});
}

/// @nodoc
class _$CategoryWithProductCopyWithImpl<$Res, $Val extends CategoryWithProduct>
    implements $CategoryWithProductCopyWith<$Res> {
  _$CategoryWithProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? categoryName = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryWithProductImplCopyWith<$Res>
    implements $CategoryWithProductCopyWith<$Res> {
  factory _$$CategoryWithProductImplCopyWith(_$CategoryWithProductImpl value,
          $Res Function(_$CategoryWithProductImpl) then) =
      __$$CategoryWithProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> products, String categoryName});
}

/// @nodoc
class __$$CategoryWithProductImplCopyWithImpl<$Res>
    extends _$CategoryWithProductCopyWithImpl<$Res, _$CategoryWithProductImpl>
    implements _$$CategoryWithProductImplCopyWith<$Res> {
  __$$CategoryWithProductImplCopyWithImpl(_$CategoryWithProductImpl _value,
      $Res Function(_$CategoryWithProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? categoryName = null,
  }) {
    return _then(_$CategoryWithProductImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryWithProductImpl implements _CategoryWithProduct {
  const _$CategoryWithProductImpl(
      {required final List<Product> products, required this.categoryName})
      : _products = products;

  factory _$CategoryWithProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryWithProductImplFromJson(json);

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final String categoryName;

  @override
  String toString() {
    return 'CategoryWithProduct(products: $products, categoryName: $categoryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryWithProductImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_products), categoryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryWithProductImplCopyWith<_$CategoryWithProductImpl> get copyWith =>
      __$$CategoryWithProductImplCopyWithImpl<_$CategoryWithProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryWithProductImplToJson(
      this,
    );
  }
}

abstract class _CategoryWithProduct implements CategoryWithProduct {
  const factory _CategoryWithProduct(
      {required final List<Product> products,
      required final String categoryName}) = _$CategoryWithProductImpl;

  factory _CategoryWithProduct.fromJson(Map<String, dynamic> json) =
      _$CategoryWithProductImpl.fromJson;

  @override
  List<Product> get products;
  @override
  String get categoryName;
  @override
  @JsonKey(ignore: true)
  _$$CategoryWithProductImplCopyWith<_$CategoryWithProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
