import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_architecture/app/app_router.dart';
import 'package:task_architecture/app/injections.dart';
import 'package:task_architecture/features/detail/presentation/bloc/detail_bloc.dart';
import 'package:task_architecture/features/home/data/models/product/product.dart';

import '../../../../gen/colors.gen.dart';
import '../widgets/w_custom_container.dart';
import '../widgets/w_detail_app_bar.dart';
import '../widgets/w_detail_title.dart';
import '../widgets/w_home_bottom_sheet.dart';

@RoutePage()
class DetailUI extends StatelessWidget implements AutoRouteWrapper {
  final Product product;

  const DetailUI({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.background,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: DetailAppBar(
              innerBoxIsScrolled: innerBoxIsScrolled,
              imgUrl: product.images!,
              backPressed: () {
                ls<AppRouter>().pop();
              },
              sharePressed: () {},
            ),
          ),
          SliverToBoxAdapter(
            child: CContainer(
              height: MediaQuery.sizeOf(context).height * 0.13,
              decoration: const BoxDecoration(
                color: ColorName.white,
              ),
            ),
          )
        ],
        body: Column(
          children: [
            DetailTitle(
              title: product.productName ?? "",
              description: product.productDescription ?? "",
            ),
          ],
        ),
      ),
      bottomSheet: const WHomeBottomSheet(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ls<DetailBloc>(),
      child: this,
    );
  }
}
