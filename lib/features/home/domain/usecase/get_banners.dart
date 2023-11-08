import 'package:dartz/dartz.dart';
import 'package:task_architecture/features/home/data/models/response/banner_response.dart';
import 'package:task_architecture/features/home/domain/repository/product_repo.dart';
import 'package:task_architecture/utils/core/failures.dart';
import 'package:task_architecture/utils/core/usecase.dart';

class GetBanners implements UseCase<BannerResponse?, NoParams?> {
  final ProductRepo repo;

  const GetBanners({
    required this.repo,
  });

  @override
  Future<Either<Failure, BannerResponse?>> call(NoParams? params) async {
    return await repo.getBanners();
  }
}
