import 'package:flutter/material.dart';
import 'package:notebook/Pages/home_pages.dart';
import 'package:notebook/Pages/splash_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:HomePages()
    );
  }
}