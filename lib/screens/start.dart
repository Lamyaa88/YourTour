import 'dart:async';
import 'package:flutter/material.dart';
import 'package:yourtour/constants/colors.dart';
import 'package:yourtour/screens/login.dart';
import 'package:yourtour/screens/signUp.dart';
import 'package:yourtour/widgets.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override

//  void initState() {
//    super.initState();
//    Timer(
////      duration time
//
//        Duration(seconds: 3),
//            () => Navigator.of(context).pushReplacement(
//            MaterialPageRoute(builder: (BuildContext context) => Start())));
//  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width ;
    return Scaffold(
        backgroundColor: mainColor,
        body: SingleChildScrollView(
          child: Stack(children: [
            Column(
              children: [
                Center(
                  child: Container(

                      height: height,
                      width: width,

                      child: Image.asset("assets/air.jpeg" ,fit:BoxFit.fitWidth,)



                  ),
                ),

              ],
            ),
            Container(height: height,width: width,color:Colors.white.withOpacity(.5),),
            Column(
              children: [
                CustomHeightSizedBox(percentage: .1),
                Center(
                  child: Container(

                      height: height*.6,
                      width: width*.88,

                      child: Image.asset("assets/logoBlue.png" ,fit:BoxFit.fitWidth,)



                  ),
                ),


              ],
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomHeightSizedBox(percentage: .44),
                Row(children: [
                  CustomWidthSizedBox(percentage:.343),
                  Center(
                    child: Container(
                        height: height*.025,

                        child: Image.asset("assets/everyBlue.png" ,fit:BoxFit.fitWidth,)



                    ),
                  ),

                ],

                ),
                CustomHeightSizedBox(percentage: .39),

                CustomButton(givenHeight: height*.065, givenWidth: width*.45, buttonColor: mainColor,
                    text: "Let\' travel !", fontSize: 20, textColor: Colors.white, onTapFunction: (){
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) {
                            return Login();
                          },
                          transitionsBuilder:
                              (context, animation8, animation15, child) {
                            return FadeTransition(
                              opacity: animation8,
                              child: child,
                            );
                          },
                          transitionDuration: Duration(milliseconds: 100),
                        ),
                      );

                    }, radius: 30),



              ],)

          ],
          ),
        )

    );
  }
}
