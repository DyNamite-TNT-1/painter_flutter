import 'package:flutter/material.dart';

import 'dart:ui' as ui;

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Painter Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          secondary: Colors.amberAccent,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
