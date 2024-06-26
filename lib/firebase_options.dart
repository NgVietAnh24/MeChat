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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAX5uN1ItC4bP4T76D5qMwSiLx3u4-ZM3Y',
    appId: '1:445383620503:web:bd220e25daecc2dc5836d2',
    messagingSenderId: '445383620503',
    projectId: 'mechat-d7595',
    authDomain: 'mechat-d7595.firebaseapp.com',
    databaseURL: 'https://mechat-d7595-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'mechat-d7595.appspot.com',
    measurementId: 'G-86YGLCB9S3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD-_rKWjz7Hw0eitg9BEFdiqSHqhd4_0gE',
    appId: '1:445383620503:android:e3d1294e6f723e9a5836d2',
    messagingSenderId: '445383620503',
    projectId: 'mechat-d7595',
    databaseURL: 'https://mechat-d7595-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'mechat-d7595.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCXTNLRz5uQcDI8cFoPEaEeFEKF737ZvI0',
    appId: '1:445383620503:ios:ab09bf0f5b90a6375836d2',
    messagingSenderId: '445383620503',
    projectId: 'mechat-d7595',
    databaseURL: 'https://mechat-d7595-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'mechat-d7595.appspot.com',
    iosBundleId: 'vn.vanh.message.mechat',
  );

}