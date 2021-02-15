import 'dart:async';
import 'package:flutter/material.dart';
import 'package:yourtour/constants/colors.dart';
import 'package:yourtour/screens/start.dart';
import 'package:yourtour/widgets.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override

  void initState() {
    super.initState();
    Timer(
//      duration time

        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Start())));
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width ;
    return Scaffold(
        backgroundColor: mainColor,
        body: SingleChildScrollView(
          child: Stack(children: [
            Column(
              children: [
                CustomHeightSizedBox(percentage: .2),
                Center(
                  child: Container(

                      height: height*.6,
                      width: width*.88,

                      child: Image.asset("assets/logo.png" ,fit:BoxFit.fitWidth,)



                  ),
                ),
               
              ],
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomHeightSizedBox(percentage: .55),
              Row(children: [
                CustomWidthSizedBox(percentage:.343),
                Center(
                  child: Container(
                    height: height*.025,

                      child: Image.asset("assets/every.png" ,fit:BoxFit.fitWidth,)



                  ),
                ),

              ],

              ),
                CustomHeightSizedBox(percentage: .34),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                  Center(
                    child: Container(
                      height: height*.1,width: width*.5,

                        child: Image.asset("assets/copy.png" ,fit:BoxFit.fitWidth,)



                    ),
                  ),

                ],

                ),


              ],)

          ],
          ),
        )

    );
  }
}
