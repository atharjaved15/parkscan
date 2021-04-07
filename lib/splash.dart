import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:parkscan/getStarted.dart';
import 'adminLogin.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {

  @override
  _splashState createState() => _splashState();

}

class _splashState extends State<splash> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: Colors.white,
        splash: Image.asset('images/pslogo.png'),
        nextScreen: getStarted(),
        splashTransition: SplashTransition.sizeTransition,
      )
    );
  }
}
