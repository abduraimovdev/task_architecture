import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_architecture/features/home/presentation/bloc/home_bloc.dart';
import 'package:task_architecture/features/home/scope/scope_value.dart';
import 'package:task_architecture/utils/core/enums.dart';
import 'package:task_architecture/utils/core/scope.dart';
import 'package:task_architecture/utils/core/show_messages.dart';
import 'package:task_architecture/utils/network/network_info.dart';
import 'package:task_architecture/utils/widgets/base_scaffold.dart';
import 'package:task_architecture/utils/widgets/w_loader.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../../../app/injections.dart';
import '../widgets/w_main_view.dart';

part '../mixin/home_mixin.dart';

@RoutePage()
class HomeUI extends StatefulWidget implements AutoRouteWrapper {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ls<HomeBloc>()..add(const HomeEvent.getData()),
      child: this,
    );
  }
}

class _HomeUIState extends State<HomeUI>
    with TickerProviderStateMixin, HomeMixin {
  @override
  void initState() {
    tabController = TabController(length: 0, vsync: this);
    autoScrollController = AutoScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: BlocConsumer<HomeBloc, HomeState>(
        builder: (context, state) {
          return Stack(
            children: [
              BindingScope(
                value: HomeScope(
                  autoScrollController: autoScrollController,
                  tabController: tabController,
                ),
                child: const WHomeMainView(),
              ),
              if (state.status == Statuses.loading) const WLoader(),
            ],
          );
        },
        listener: (BuildContext context, HomeState state) async {
          if (state.categoryWithProducts.isNotEmpty) {
            tabController = TabController(
              length: state.categoryWithProducts.length,
              vsync: this,
            );
          }
          if (!(await ls<NetworkInfo>().isConnected)) {
            if (context.mounted) {
              Show.msg(
                context,
                "Iltimos Internetingizni Tekshiring!",
                color: Colors.red,
              );
            }
          }

        },
      ),
    );
  }
}
