part of 'home_bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(Statuses.initial) Statuses status,
    Failure? error,
    BannerResponse? banners,
    @Default([]) List<CategoryWithProduct> categoryWithProducts,
  }) = _HomeState;
}
