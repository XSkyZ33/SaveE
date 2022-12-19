import 'package:flutter/material.dart';
import 'auth.dart';
import 'config/Pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Auth(),
      theme: ThemeData(
        primarySwatch: Pallette.kToDark,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


