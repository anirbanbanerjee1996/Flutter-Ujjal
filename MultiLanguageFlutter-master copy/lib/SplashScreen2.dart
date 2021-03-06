import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

import 'login.dart';

class SplashPage2 extends StatefulWidget {

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage2> {

// THIS FUNCTION WILL NAVIGATE FROM SPLASH SCREEN TO HOME SCREEN.    // USING NAVIGATOR CLASS.

  void navigationToNextPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  startSplashScreenTimer() async {
    var _duration = new Duration(seconds: 1);
    return new Timer(_duration, navigationToNextPage);
  }

  @override
  void initState() {
    super.initState();
    startSplashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {

    // To make this screen full screen.
    // It will hide status bar and notch.
    SystemChrome.setEnabledSystemUIOverlays([]);

    // full screen image for splash screen.
    return Container(
        child: new Image.asset('assets/screen3.jpg', fit: BoxFit.fill));
  }
}