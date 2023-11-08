import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_architecture/utils/core/bloc_observer.dart';
import '/app/task_app.dart';
import 'app/injections.dart';
import 'utils/core/app_constants.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MainBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setup();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    EasyLocalization(
      supportedLocales: AppConstants.languages,
      path: 'assets/translations',
      fallbackLocale: AppConstants.languages[0],
      useOnlyLangCode: true,
      child: const TaskApp(),
    ),
  );
}
