import 'dart:async';

import 'package:flutter/material.dart';
import 'package:poins/bottombar/bottombar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // auth.box.wr
    const delay = Duration(seconds: 2);
    Future.delayed(delay, () => onTimerFinished());
  }

  void onTimerFinished() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const BottomBar()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Expanded(
            child: Center(
              child: Image.asset(
                "assets/images/logo_splash_screen.png",
                width: 300,
                height: 300,
              ),
            ),
          ),
          Image.asset(
            "assets/images/credit.png",
            width: 150,
            height: 150,
          ),
        ],
      ),
    );
  }
}
