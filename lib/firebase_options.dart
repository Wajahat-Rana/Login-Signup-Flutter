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
    apiKey: 'AIzaSyA9Dg52HWyZOj44YWkNQgtaO5hWzugKLPY',
    appId: '1:411632182772:web:2e1b4a23e0918915b705a1',
    messagingSenderId: '411632182772',
    projectId: 'login-signup-79aec',
    authDomain: 'login-signup-79aec.firebaseapp.com',
    storageBucket: 'login-signup-79aec.appspot.com',
    measurementId: 'G-DMGLE7TQJT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBvoT8qqaBIpM3rmnNiWA4hJLxO-SxWHGk',
    appId: '1:411632182772:android:d99451086b283aa6b705a1',
    messagingSenderId: '411632182772',
    projectId: 'login-signup-79aec',
    storageBucket: 'login-signup-79aec.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCo0LwQiRWIB38RyFJyZHMQ16hm21-Xphk',
    appId: '1:411632182772:ios:2337d25c15e5bf78b705a1',
    messagingSenderId: '411632182772',
    projectId: 'login-signup-79aec',
    storageBucket: 'login-signup-79aec.appspot.com',
    iosBundleId: 'com.example.loginSignup',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCo0LwQiRWIB38RyFJyZHMQ16hm21-Xphk',
    appId: '1:411632182772:ios:43332c6102e65a4eb705a1',
    messagingSenderId: '411632182772',
    projectId: 'login-signup-79aec',
    storageBucket: 'login-signup-79aec.appspot.com',
    iosBundleId: 'com.example.loginSignup.RunnerTests',
  );
}
