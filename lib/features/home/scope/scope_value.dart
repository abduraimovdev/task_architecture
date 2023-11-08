import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'package:task_architecture/features/home/data/models/product/product.dart';
import '../../../app/app_router.dart';
import '../../../app/app_router.gr.dart';
import '../../../app/injections.dart';
import '../../../utils/core/scope.dart';

class HomeScope implements BindingValue {
  final TabController tabController;

  final AutoScrollController autoScrollController;

  const HomeScope({
    required this.autoScrollController,
    required this.tabController,
  });

  void onPressProduct(BuildContext context, Product product) {
    ls<AppRouter>().push(DetailUI(product: product));
  }
}
