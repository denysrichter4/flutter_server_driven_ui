import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';

class SecondScreenView extends StatelessWidget {
  const SecondScreenView({Key? key, required this.json}) : super(key: key);
  final Map<String, dynamic> json;
  @override
  Widget build(BuildContext context) {
    return Mirai.fromJson(json, context);
  }
}

