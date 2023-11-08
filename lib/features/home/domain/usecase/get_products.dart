import 'package:dartz/dartz.dart';
import 'package:task_architecture/features/home/data/models/product/product.dart';
import 'package:task_architecture/features/home/domain/repository/product_repo.dart';
import 'package:task_architecture/utils/core/failures.dart';
import 'package:task_architecture/utils/core/usecase.dart';

import '../../data/models/cateory_with_product/category_with_product.dart';

class GetProducts implements UseCase<List<CategoryWithProduct>?, NoParams?> {
  final ProductRepo repo;

  const GetProducts({
    required this.repo,
  });

  @override
  Future<Either<Failure, List<CategoryWithProduct>?>> call(
      NoParams? params) async {
    final products = await repo.getCategoryWithProducts();
    return products.fold((l) {
      return Left(l);
    }, (r) {
      if (r == null || r.products == null) {
        return const Left(NullFailure(errorMessage: "Not Found Poroduct"));
      }
      Map<String, List<Product>> result = {};
      for (final product in r.products!) {
        if (result.containsKey(product.productType)) {
          result[product.productType ?? ""] = [
            ...?result[product.productType],
            product
          ];
        } else {
          result[product.productType ?? ""] = [product];
        }
      }
      List<CategoryWithProduct> categoriesWithProducts = result.values
          .map((value) => CategoryWithProduct(
              products: value, categoryName: value[0].productType!))
          .toList();

      return Right(categoriesWithProducts);
    });
  }
}
