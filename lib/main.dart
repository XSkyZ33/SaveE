import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:savee/home_page.dart';
import 'package:savee/splash.dart';
import 'auth.dart';
import 'config/Pallete.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      theme: ThemeData(
        primarySwatch: Pallette.kToDark,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


