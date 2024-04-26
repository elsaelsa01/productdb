// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAKAvKXVXN6Fsto_6LfuGxyBg_Zj_IfTgk',
    appId: '1:20812542841:web:131b1962d2dd1f735ab5a8',
    messagingSenderId: '20812542841',
    projectId: 'product-db-d0b8c',
    authDomain: 'product-db-d0b8c.firebaseapp.com',
    databaseURL: 'https://product-db-d0b8c-default-rtdb.firebaseio.com',
    storageBucket: 'product-db-d0b8c.appspot.com',
    measurementId: 'G-S5FMX8K63S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBIQlqPP1l76zTUVCdwmrm5JreAqjb-6Io',
    appId: '1:20812542841:android:3e4c62e129ed8e075ab5a8',
    messagingSenderId: '20812542841',
    projectId: 'product-db-d0b8c',
    databaseURL: 'https://product-db-d0b8c-default-rtdb.firebaseio.com',
    storageBucket: 'product-db-d0b8c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC1TwGvTXzs77iy02nWsQ0jmDjvgLFM4lk',
    appId: '1:20812542841:ios:812f36ff3238e11d5ab5a8',
    messagingSenderId: '20812542841',
    projectId: 'product-db-d0b8c',
    databaseURL: 'https://product-db-d0b8c-default-rtdb.firebaseio.com',
    storageBucket: 'product-db-d0b8c.appspot.com',
    iosBundleId: 'com.example.product',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC1TwGvTXzs77iy02nWsQ0jmDjvgLFM4lk',
    appId: '1:20812542841:ios:812f36ff3238e11d5ab5a8',
    messagingSenderId: '20812542841',
    projectId: 'product-db-d0b8c',
    databaseURL: 'https://product-db-d0b8c-default-rtdb.firebaseio.com',
    storageBucket: 'product-db-d0b8c.appspot.com',
    iosBundleId: 'com.example.product',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAKAvKXVXN6Fsto_6LfuGxyBg_Zj_IfTgk',
    appId: '1:20812542841:web:2ca43012439513c45ab5a8',
    messagingSenderId: '20812542841',
    projectId: 'product-db-d0b8c',
    authDomain: 'product-db-d0b8c.firebaseapp.com',
    databaseURL: 'https://product-db-d0b8c-default-rtdb.firebaseio.com',
    storageBucket: 'product-db-d0b8c.appspot.com',
    measurementId: 'G-SHZ5C4WK9T',
  );

}