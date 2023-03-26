import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_server_driven_ui/src/view/second_screen_view.dart';
import 'package:mirai/mirai.dart';
import '../repository/firebase/firebase_repository.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  static const String route = "/";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  FirebaseRepository repository = FirebaseRepository();
  Map<String, dynamic> screensMap = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen List"),
      ),
        body: StreamBuilder(
          stream: FirebaseDatabase
              .instance
              .ref("server_driven_ui").onValue,
          builder: (context, snapshot){
            if(snapshot.hasData && !snapshot.hasError) {
              var event = snapshot.data as DatabaseEvent;
              var snapshot2 = event.snapshot.value;
              if (snapshot2 == null) {
                return const Center(child: Text("Sem items na lista"),);
              }
              var encoded = jsonEncode(snapshot2);
              Map<String, dynamic> map = Map<String, dynamic>.from(jsonDecode(encoded.toString()));
              var items = < Map<String, dynamic>>[];
              return ListView.builder(
                padding: const EdgeInsets.only(top: 16, left: 2, right: 2, bottom: 120),
                itemCount: map.length,
                itemBuilder: (ctx, i){
                  for (var itemMap in map.values) {
                    items.add(itemMap);
                  }
                  return SecondScreenView(json: items[i]);
                }
              );
            }else{
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
    );
  }
}
