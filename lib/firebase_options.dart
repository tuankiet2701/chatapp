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
    apiKey: 'AIzaSyDdn0-BZMttYF-Qhqh3-wLd3w54u2u1Odo',
    appId: '1:186666060210:web:e1fbdcfef77857d55d7cab',
    messagingSenderId: '186666060210',
    projectId: 'chatapp-1adbb',
    authDomain: 'chatapp-1adbb.firebaseapp.com',
    storageBucket: 'chatapp-1adbb.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCvOFTeEYyhyNgf69YiImQYQPbX0ZKsgdg',
    appId: '1:186666060210:android:cd5480ab1c438e935d7cab',
    messagingSenderId: '186666060210',
    projectId: 'chatapp-1adbb',
    storageBucket: 'chatapp-1adbb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCsMc5ausb5EPvQTn_tT3yFpEJEvw-snew',
    appId: '1:186666060210:ios:2ca2d050e0060ce85d7cab',
    messagingSenderId: '186666060210',
    projectId: 'chatapp-1adbb',
    storageBucket: 'chatapp-1adbb.appspot.com',
    iosClientId: '186666060210-mcumuig3bdoohnggp7c0jm2hif4pj4gc.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCsMc5ausb5EPvQTn_tT3yFpEJEvw-snew',
    appId: '1:186666060210:ios:3af8d423843760bc5d7cab',
    messagingSenderId: '186666060210',
    projectId: 'chatapp-1adbb',
    storageBucket: 'chatapp-1adbb.appspot.com',
    iosClientId: '186666060210-go4nm4ao6ohj3hknt85g1qjbcq0gccsc.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
