import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyB3scjYrr5HFS_THukimO3nOBvAHcXTZ6U',
    appId: '1:893529443653:web:18d0f74b1e95d070fa822c',
    messagingSenderId: '893529443653',
    projectId: 'flutter-server-driven-ui',
    authDomain: 'flutter-server-driven-ui.firebaseapp.com',
    databaseURL: 'https://flutter-server-driven-ui-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-server-driven-ui.appspot.com',
    measurementId: 'G-PBR6G58YQH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCdU1e4t-dqx2GxEEXgTbqntc5BhXfyVWY',
    appId: '1:893529443653:android:2512029fd82a374dfa822c',
    messagingSenderId: '893529443653',
    projectId: 'flutter-server-driven-ui',
    databaseURL: 'https://flutter-server-driven-ui-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-server-driven-ui.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBM-ok3JR86dgZgNRvLFBLaZd3PIaHWH30',
    appId: '1:893529443653:ios:959d6905eae155d9fa822c',
    messagingSenderId: '893529443653',
    projectId: 'flutter-server-driven-ui',
    databaseURL: 'https://flutter-server-driven-ui-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-server-driven-ui.appspot.com',
    iosClientId: '893529443653-7j0vvid6nd5hk391mk13gf134uoec64o.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterServerDrivenUi',
  );
}
