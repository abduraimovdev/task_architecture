import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_architecture/features/home/data/models/cateory_with_product/category_with_product.dart';
import 'package:task_architecture/features/home/data/models/response/banner_response.dart';
import 'package:task_architecture/features/home/domain/usecase/get_products.dart';

import '../../../../utils/core/enums.dart';
import '../../../../utils/core/failures.dart';
import '../../domain/usecase/get_banners.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetProducts getProducts;
  final GetBanners getBanners;

  HomeBloc({required this.getProducts, required this.getBanners})
      : super(const HomeState()) {
    on<_GetData>(_getData);
  }

  void _getData(_GetData event, Emitter<HomeState> emit) async {
    emit(state.copyWith.call(status: Statuses.loading));
    final banner = await getBanners.call(null);

    banner.fold(
      (l) => emit(
        state.copyWith.call(
          status: Statuses.error,
          error: l,
        ),
      ),
      (r) => emit(state.copyWith.call(
        status: Statuses.success,
        banners: r,
      )),
    );
    final products = await getProducts.call(null);
    products.fold(
      (l) => emit(
        state.copyWith.call(
          status: Statuses.error,
          error: l,
        ),
      ),
      (r) {
        return emit(state.copyWith.call(
          status: Statuses.success,
          categoryWithProducts: r!,
        ));
      }
    );
  }
}
