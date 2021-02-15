import 'package:flutter/material.dart';
import 'package:yourtour/screens/splash.dart';

import 'constants/colors.dart';
void main(){
  runApp(
      MaterialApp(debugShowCheckedModeBanner: false,
          home: Splash(),
          theme: ThemeData(
              primaryColor: mainColor,
              accentColor: mainColor,
              fontFamily: "Segoe UI",
              textTheme: TextTheme(
                bodyText1: TextStyle(),
                bodyText2: TextStyle(),
              ).apply(
                bodyColor: mainColor,
                displayColor: Colors.blue,
              ))));
}
