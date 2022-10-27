import 'package:flutter/material.dart';
import 'dart:async';
import 'package:miniproject_putra/page/page.dart';

import 'intro.dart';

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => IntroScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.mosque_rounded,
              size: 100.0,
              color: Colors.white,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "JANGAN LUPA BERDOA",
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
