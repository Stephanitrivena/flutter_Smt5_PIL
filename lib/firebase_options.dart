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
    apiKey: 'AIzaSyC5dtNEEd2VlPsdDWvCTyaCr70cZur36nI',
    appId: '1:419188940723:web:dc3db12fb6c5d9b70ef5c6',
    messagingSenderId: '419188940723',
    projectId: 'flutter-task-management-f0434',
    authDomain: 'flutter-task-management-f0434.firebaseapp.com',
    storageBucket: 'flutter-task-management-f0434.appspot.com',
    measurementId: 'G-KGHJY3LXLE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAixbWP0rCzYuuAFupjhS2uB-64O8P4GNE',
    appId: '1:419188940723:android:90cbdf337eee33150ef5c6',
    messagingSenderId: '419188940723',
    projectId: 'flutter-task-management-f0434',
    storageBucket: 'flutter-task-management-f0434.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAmbgdVOa-AvPA49mAtoOrT4vKwSsE_JDQ',
    appId: '1:419188940723:ios:483998aaa5bc36990ef5c6',
    messagingSenderId: '419188940723',
    projectId: 'flutter-task-management-f0434',
    storageBucket: 'flutter-task-management-f0434.appspot.com',
    iosClientId: '419188940723-1smrsm0qdvm8tboigrqn0irhgesejoq1.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterPertama',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAmbgdVOa-AvPA49mAtoOrT4vKwSsE_JDQ',
    appId: '1:419188940723:ios:483998aaa5bc36990ef5c6',
    messagingSenderId: '419188940723',
    projectId: 'flutter-task-management-f0434',
    storageBucket: 'flutter-task-management-f0434.appspot.com',
    iosClientId: '419188940723-1smrsm0qdvm8tboigrqn0irhgesejoq1.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterPertama',
  );
}
