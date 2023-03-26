import 'package:flutter_server_driven_ui/src/view/second_screen_view.dart';
import '../view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MiraiApp(
      title: 'Flutter Server Driven UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
      // routes: {
      //   HomeView.route: (_)=> const HomeView(),
      //   SecondScreenView.route: (_)=> const SecondScreenView(),
      // }
    );
  }
}