import 'dart:async';
import 'package:coffee_shop/on_boarding.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 1),(){
      var route=MaterialPageRoute(builder:(context){return OnBoarding();} );
      Navigator.of(context).pushReplacement(route);
    });
    return Container(
      child: Image.asset(
        "assets/splash.jpeg",
        fit: BoxFit.cover,
      ),
    );
  }
}
