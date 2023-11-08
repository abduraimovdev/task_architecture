import 'package:flutter/material.dart';
import 'package:task_architecture/features/home/scope/scope_value.dart';
import 'package:task_architecture/utils/core/scope.dart';
import 'package:vertical_scrollable_tabview/vertical_scrollable_tabview.dart';

import '../../../../gen/colors.gen.dart';
import '../../data/models/cateory_with_product/category_with_product.dart';

class WHomeAppBar extends StatelessWidget {
  const WHomeAppBar({
    super.key,
    required this.data,
  });


  final List<CategoryWithProduct> data;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 150.0,
      backgroundColor: ColorName.blue,
      flexibleSpace: const FlexibleSpaceBar(
        centerTitle: true,
        title: Text("Task"),
        titlePadding: EdgeInsets.only(bottom: 70, left: 10),
        collapseMode: CollapseMode.pin,
      ),
      bottom: TabBar(
        isScrollable: true,
        padding: const EdgeInsets.only(bottom: 20),
        controller: BindingScope.of(context).getValue<HomeScope>().tabController,
        indicatorPadding:
            const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
        indicator: BoxDecoration(
          color: ColorName.white,
          borderRadius: BorderRadius.circular(12),
        ),
        indicatorColor: ColorName.lightBlue,
        labelColor: ColorName.blue,
        unselectedLabelColor: Colors.white,
        indicatorWeight: 3.0,
        tabs: data.map((e) {
          return Tab(text: e.categoryName);
        }).toList(),
        onTap: (index) {
          VerticalScrollableTabBarStatus.setIndex(index);
        },
      ),
    );
  }
}
