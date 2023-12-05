import 'package:flutter/material.dart';
import 'package:to_doapp/onco/pages/first_screen.dart';
import 'package:to_doapp/pages/getapidiopage.dart';
import 'package:to_doapp/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      home: const FirstScreen(),
    );
  }
}
