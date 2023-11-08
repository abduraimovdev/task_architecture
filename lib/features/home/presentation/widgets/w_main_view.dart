import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_architecture/features/home/presentation/widgets/w_progress_indicator.dart';
import 'package:vertical_scrollable_tabview/vertical_scrollable_tabview.dart';

import '../../../../utils/core/scope.dart';
import '../../scope/scope_value.dart';
import '../bloc/home_bloc.dart';
import 'w_home_app_bar.dart';
import 'w_home_banner.dart';
import 'w_view_category_with_product.dart';

class WHomeMainView extends StatelessWidget {
  const WHomeMainView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) => current.categoryWithProducts.length != previous.categoryWithProducts.length,
      builder: (context, state) {
        return VerticalScrollableTabView(
          autoScrollController: BindingScope.of(context)
              .getValue<HomeScope>()
              .autoScrollController,
          tabController:
              BindingScope.of(context).getValue<HomeScope>().tabController,
          listItemData: state.categoryWithProducts,
          scrollbarThumbVisibility: false,
          verticalScrollPosition: VerticalScrollPosition.begin,
          eachItemChild: (category, index) {
            return WCategoryWithProduct(category: category);
          },
          slivers: [
            WHomeAppBar(data: state.categoryWithProducts),
            const WCustomProgressIndicator(),
            BlocBuilder<HomeBloc, HomeState>(
              buildWhen: (previous, current) => current.banners != previous.banners,
              builder: (context, state) {
                return WHomeBanner(
                  imageBanners: state.banners?.banners,
                );
              },
            ),
          ],
        );
      },
    );
  }
}
