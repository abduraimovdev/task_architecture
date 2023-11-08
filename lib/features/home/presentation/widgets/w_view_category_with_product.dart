import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_architecture/features/home/data/models/cateory_with_product/category_with_product.dart';
import 'package:task_architecture/features/home/data/models/product/product.dart';
import 'package:task_architecture/features/home/scope/scope_value.dart';
import 'package:task_architecture/gen/colors.gen.dart';
import 'package:task_architecture/utils/core/dimensions.dart';
import 'package:task_architecture/utils/core/scope.dart';

import '../../../../utils/core/styles.dart';

/// #Category View
class WCategoryWithProduct extends StatelessWidget {
  final CategoryWithProduct category;

  const WCategoryWithProduct({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: ColorName.white,
          borderRadius: Dimensions.radiusAll12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: Dimensions.paddingTop16H16,
              child: Text(
                category.categoryName,
                style: kBlackStyle22w600,
              ),
            ),
            for (int i = 0; i < category.products.length; i++)
              WViewProduct(
                product: category.products[i],
                divider: category.products.length - 1 != i,
              ),
            Dimensions.vSpace10,
          ],
        ),
      ),
    );
  }
}

/// #Product View In Category
class WViewProduct extends StatelessWidget {
  final Product product;
  final bool divider;

  const WViewProduct({super.key, required this.product, required this.divider});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () => BindingScope.of(context).getValue<HomeScope>().onPressProduct(context, product),
      child: Padding(
        padding: Dimensions.paddingH16,
        child: Column(
          children: [
            Padding(
              padding: Dimensions.paddingV16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.productName ?? "",
                          style: kBlackStyle15w500,
                        ),
                        Dimensions.vSpace10,
                        Text(
                          product.productDescription ?? "",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: kGreyStyle13w400,
                        ),
                        Dimensions.vSpace15,
                        Text(
                          "${product.productPrice ?? 0} So'm",
                          style: kBlackStyle15w600,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      width: 88,
                      height: 88,
                      child: PageView.builder(
                        itemBuilder: (context, index) => ClipRRect(
                          borderRadius: Dimensions.radiusAll12,
                          child: CachedNetworkImage(
                            imageUrl: product.images?[index] ?? "",
                            placeholder: (context, url) => const Icon(
                              Icons.image,
                              size: 40,
                            ),
                            errorWidget: (context, url, error) => const Icon(
                              Icons.image,
                              size: 40,
                            ),
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (divider) const Divider(),
          ],
        ),
      ),
    );
  }
}
