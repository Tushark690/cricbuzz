import 'dart:async';

import 'package:cricbuzz/screen/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer _timer;
  bool _check=false;

  @override
  void initState() {
    startTime();
    super.initState();
  }

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() async {
    Navigator.pushReplacement(context,MaterialPageRoute( builder: (context) => Home() ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff35ad89),
        child: SafeArea(
            child: Center(
              child: Image.network("https://m.cricbuzz.com/public/images/cricbuzz/cb_logo.png")
            ),
        ),
      ),
    );
  }
}
