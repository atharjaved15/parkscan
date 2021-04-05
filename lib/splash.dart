import 'dart:async';
import 'getStarted.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {

  @override
  _splashState createState() => _splashState();

}

class _splashState extends State<splash> {

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) => getStarted())));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Center(
            child: Image.asset('images/pslogo.png' , height: 40,),
          ),
        ),
      ),
    );
  }
}
