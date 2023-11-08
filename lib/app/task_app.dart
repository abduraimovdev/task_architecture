import 'package:flutter/material.dart';
import 'app_router.dart';
import 'injections.dart';
import 'package:easy_localization/easy_localization.dart';
import '/gen/colors.gen.dart';

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = ls<AppRouter>();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorName.white,
        //primaryColor: ColorName.primary,
        bottomSheetTheme:
            const BottomSheetThemeData(backgroundColor: ColorName.white),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: ColorName.white),
      ),
    );
  }
}
