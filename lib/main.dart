import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todolist/pages/home_page.dart';


void main() async {
  //inisiasi hive
  await Hive.initFlutter();
  //buka box
  var box = await Hive.openBox('mybox');
  runApp (const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build (BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      home: HomePage (),
      theme: ThemeData (primarySwatch: Colors.lightBlue),
    );
  }
}
