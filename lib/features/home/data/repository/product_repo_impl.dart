import 'package:dartz/dartz.dart';
import 'package:task_architecture/features/home/data/data_source/product_remote_data_source.dart';
import 'package:task_architecture/features/home/data/models/response/banner_response.dart';
import 'package:task_architecture/features/home/data/models/response/product_response.dart';
import 'package:task_architecture/features/home/domain/repository/product_repo.dart';
import 'package:task_architecture/utils/core/failures.dart';

import '../../../../utils/network/network_info.dart';

class ProductRepoImpl implements ProductRepo {
  final ProductRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  const ProductRepoImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });


  @override
  Future<Either<Failure, BannerResponse?>> getBanners() async {
    if (await networkInfo.isConnected) {
      try {
        final data = await remoteDataSource.getBanners();
        print(data);
        return Right(data);
      } on ServerFailure catch (e) {
        print('server');
        return Left(e);
      }
    } else {
      return const Left(ConnectionFailure("No Connection", 400));
    }
  }

  @override
  Future<
      Either<Failure, ProductResponse?>> getCategoryWithProducts() async {
    if (await networkInfo.isConnected) {
      try {
        final data = await remoteDataSource.getProducts();
        return Right(data);
      } on ServerFailure catch (e) {
        print('server');
        print(e);
        return Left(e);
      }
    } else {
      return const Left(ConnectionFailure("No Connection", 400));
    }
  }


}