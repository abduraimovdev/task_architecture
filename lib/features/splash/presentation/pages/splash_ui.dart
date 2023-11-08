import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task_architecture/gen/colors.gen.dart';
import '/app/app_router.dart';
import '/app/routes.dart';
import '/app/injections.dart';
import '/gen/assets.gen.dart';
import '/utils/widgets/base_scaffold.dart';

@RoutePage()
class SplashUI extends StatefulWidget {
  const SplashUI({super.key});

  @override
  State<SplashUI> createState() => _SplashUIState();
}

class _SplashUIState extends State<SplashUI> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      ls<AppRouter>().replaceNamed(Routes.HOME);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Center(child: Assets.images.jewelery.svg(color: ColorName.blue)),
    );
  }
}
