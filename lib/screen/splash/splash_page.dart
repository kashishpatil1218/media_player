import 'dart:async';

import 'package:flutter/material.dart';

import '../home/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Image.asset('asset/img/splash.png',height: 200,)),
    );
  }
}
