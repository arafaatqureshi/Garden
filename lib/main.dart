import 'package:faisal_urraan/Views/Splash/splash.dart';
import 'package:faisal_urraan/Views/audiospeaking.dart';
import 'package:faisal_urraan/Views/chat.dart';
import 'package:faisal_urraan/Views/customer_support.dart';
import 'package:faisal_urraan/Views/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gardern App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
    );
  }
}

