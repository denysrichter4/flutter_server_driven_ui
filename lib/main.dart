import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_server_driven_ui/src/domain/remote_config/custom_remote_config.dart';
import 'package:flutter_server_driven_ui/src/navigation/navigation_controller.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  CustomRemoteConfig().initialize();
  runApp(const MyApp());
}