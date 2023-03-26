import 'dart:convert';
import 'package:firebase_database/firebase_database.dart';

class FirebaseRepository{
  late DatabaseReference screens;
  Future<String> getEvent(String screen) async {
    var snapshot = await FirebaseDatabase
        .instance
        .ref("server_driven_ui")
        .child(screen)
        .get();
    if (!snapshot.exists) {
      print('No data available.');
    }
    return jsonEncode(snapshot.value);
  }
}