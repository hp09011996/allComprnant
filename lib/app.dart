import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/Home/home.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'UI component',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'UI Component'),
    );
  }
}
