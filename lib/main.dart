import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttersplashscreen/SplashScreenPage.dart';
import 'package:fluttersplashscreen/homepage.dart';

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Splash Screen",
      home: SplashScreenPage ( ),
    );
  }
}
