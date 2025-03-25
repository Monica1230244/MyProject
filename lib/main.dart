import 'package:flutter/material.dart';
import 'package:myapp/test.dart';
import 'package:myapp/test1.dart';
import 'test.dart';
import 'test1.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: Accueil2(),
      debugShowCheckedModeBanner: false,
    );
  }
}
