import 'package:dartz/dartz.dart';
import 'package:task_architecture/features/home/data/models/response/banner_response.dart';
import 'package:task_architecture/features/home/data/models/response/product_response.dart';
import 'package:task_architecture/utils/core/failures.dart';

abstract interface class ProductRepo {
  Future<Either<Failure, ProductResponse?>> getCategoryWithProducts();
  Future<Either<Failure, BannerResponse?>> getBanners();
}