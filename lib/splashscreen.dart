import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:splash_screen_2/images.dart';
import 'package:splash_screen_2/main.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Opacity(
                // opacity: 0.2,
                // // With Background Image
                // child: Image(
                //   image: AssetImage(captainMarvel),
                //   height: 800.0,
                //   fit: BoxFit.fitHeight,
                // ),
                // With Background Color
                opacity: 0.4,
                child: Container(color: Colors.red,),
              ),
              Shimmer.fromColors(
                period: Duration(seconds: 2),
                baseColor: Color(0xFF832685),
                highlightColor: Color(0xFFC81379),
                child: Text(
                  'The Tech Designer',
                  style: TextStyle(
                    fontSize: 42.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    shadows: <Shadow>[
                      Shadow(
                        color: Colors.black87,
                        blurRadius: 20.0,
                        offset: Offset.fromDirection(125.15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
