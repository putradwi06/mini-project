import 'package:flutter/material.dart';
import 'package:miniproject_putra/page/page.dart';
import 'package:miniproject_putra/page/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash(),
    );
  }
}
