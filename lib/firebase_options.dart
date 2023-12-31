// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBmI7Appk7tbpz6vwIdo2RMxwqeniTahF8',
    appId: '1:173352563614:web:164bee01c972aa0d46dc8f',
    messagingSenderId: '173352563614',
    projectId: 'task-5d2a2',
    authDomain: 'task-5d2a2.firebaseapp.com',
    databaseURL: 'https://task-5d2a2-default-rtdb.firebaseio.com',
    storageBucket: 'task-5d2a2.appspot.com',
    measurementId: 'G-646RPVHYHS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCYGOnA-m9c8Swouy_fFEGWTw3JkS56ryI',
    appId: '1:173352563614:android:c033b427bd3dee9d46dc8f',
    messagingSenderId: '173352563614',
    projectId: 'task-5d2a2',
    databaseURL: 'https://task-5d2a2-default-rtdb.firebaseio.com',
    storageBucket: 'task-5d2a2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBoMhZYySjA68vcpdb2Hgs-jm2b3a8vxRM',
    appId: '1:173352563614:ios:46e22eb5c237c0cb46dc8f',
    messagingSenderId: '173352563614',
    projectId: 'task-5d2a2',
    databaseURL: 'https://task-5d2a2-default-rtdb.firebaseio.com',
    storageBucket: 'task-5d2a2.appspot.com',
    iosBundleId: 'uz.abduraimov.taskArchitecture',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBoMhZYySjA68vcpdb2Hgs-jm2b3a8vxRM',
    appId: '1:173352563614:ios:0213703638874adf46dc8f',
    messagingSenderId: '173352563614',
    projectId: 'task-5d2a2',
    databaseURL: 'https://task-5d2a2-default-rtdb.firebaseio.com',
    storageBucket: 'task-5d2a2.appspot.com',
    iosBundleId: 'uz.abduraimov.taskArchitecture.RunnerTests',
  );
}
