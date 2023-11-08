// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:task_architecture/features/detail/presentation/pages/detail_ui.dart'
    as _i1;
import 'package:task_architecture/features/home/data/models/product/product.dart'
    as _i6;
import 'package:task_architecture/features/home/presentation/pages/home_ui.dart'
    as _i2;
import 'package:task_architecture/features/splash/presentation/pages/splash_ui.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    DetailUI.name: (routeData) {
      final args = routeData.argsAs<DetailUIArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.WrappedRoute(
            child: _i1.DetailUI(
          key: args.key,
          product: args.product,
        )),
      );
    },
    HomeUI.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.WrappedRoute(child: const _i2.HomeUI()),
      );
    },
    SplashUI.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SplashUI(),
      );
    },
  };
}

/// generated route for
/// [_i1.DetailUI]
class DetailUI extends _i4.PageRouteInfo<DetailUIArgs> {
  DetailUI({
    _i5.Key? key,
    required _i6.Product product,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          DetailUI.name,
          args: DetailUIArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailUI';

  static const _i4.PageInfo<DetailUIArgs> page =
      _i4.PageInfo<DetailUIArgs>(name);
}

class DetailUIArgs {
  const DetailUIArgs({
    this.key,
    required this.product,
  });

  final _i5.Key? key;

  final _i6.Product product;

  @override
  String toString() {
    return 'DetailUIArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i2.HomeUI]
class HomeUI extends _i4.PageRouteInfo<void> {
  const HomeUI({List<_i4.PageRouteInfo>? children})
      : super(
          HomeUI.name,
          initialChildren: children,
        );

  static const String name = 'HomeUI';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SplashUI]
class SplashUI extends _i4.PageRouteInfo<void> {
  const SplashUI({List<_i4.PageRouteInfo>? children})
      : super(
          SplashUI.name,
          initialChildren: children,
        );

  static const String name = 'SplashUI';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
