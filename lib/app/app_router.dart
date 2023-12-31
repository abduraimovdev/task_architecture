import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';
import 'routes.dart';

/// Whenever you add new route run   flutter pub run build_runner build in terminal
@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends $AppRouter {

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: SplashUI.page,
      path: Routes.SPLASH,
    ),
    AutoRoute(
      page: HomeUI.page,
      path: Routes.HOME,
    ),
    AutoRoute(
      page: DetailUI.page,
      path: Routes.DETAIL,
    ),
  ];
}
