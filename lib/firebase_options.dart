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
    apiKey: 'AIzaSyDtui4BAmVQyfeJinZlRK2OdvXB3iolCr4',
    appId: '1:51542644769:web:4c2aa20f1cb019d6e02b60',
    messagingSenderId: '51542644769',
    projectId: 'loginapp-65576',
    authDomain: 'loginapp-65576.firebaseapp.com',
    storageBucket: 'loginapp-65576.appspot.com',
    measurementId: 'G-P8CJVB2KJS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBMCbAhyQDWSH3pOw06Uav3RwRUxTppvPo',
    appId: '1:51542644769:android:570ce89013cf9bf6e02b60',
    messagingSenderId: '51542644769',
    projectId: 'loginapp-65576',
    storageBucket: 'loginapp-65576.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDeUguJ0J2qRbWPTLHtnfKyOMCZEhaMC3I',
    appId: '1:51542644769:ios:a6727a78c83915dfe02b60',
    messagingSenderId: '51542644769',
    projectId: 'loginapp-65576',
    storageBucket: 'loginapp-65576.appspot.com',
    iosBundleId: 'com.example.thirdProject',
  );
}
