import 'package:bmi_app/home.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScr extends StatefulWidget {
  @override
  _SplashScrState createState() => _SplashScrState();
}

class _SplashScrState extends State<SplashScr> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
        imageSrc: 'images/bmi.png',
        home: HomePage(),
        duration: 3000,
        imageSize: 100,
        text: 'Body Mass Index',
        textType: TextType.ColorizeAnimationText,
        textStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w300,
        ),
      colors: [
        Colors.purple,
        Colors.blue,
      ],
      backgroundColor: Color(0xFFF6FAFF),
    );
  }
}
