import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yourtour/constants/colors.dart';
import 'package:yourtour/widgets.dart';

import 'home.dart';
class Confirm extends StatefulWidget {
  @override
  _ConfirmState createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                     Column(
                      children: [
                        CustomHeightSizedBox(percentage: .05),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                          CustomImage(path: "assets/prev.png", givenHeight:height*.08, givenWidth: null),

                          CustomImage(path: "assets/notification.png", givenHeight:height*.08, givenWidth: null)
                        ],),
                        CustomHeightSizedBox(percentage: .01),
                        Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                          Container(height: height*.8,width: width*.9,decoration:
                          BoxDecoration(color: Colors.white,
                              borderRadius:BorderRadius.only(topRight:
                          Radius.circular(10),topLeft: Radius.circular(10),bottomLeft:
                              Radius.circular(10),bottomRight:
                              Radius.circular(10))),child: Column(mainAxisAlignment:
                          MainAxisAlignment.start,children: [
                            CustomHeightSizedBox(percentage: .05),

                            Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                                  CustomText(text: "Thanks !", size: height*.025, color: mainColor, weight: FontWeight.bold)
                                ],),
                            CustomHeightSizedBox(percentage: .01),
                            Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                              CustomText(text: "Your ticket is confirmed ", size: height*.025, color: mainColor, weight: FontWeight.normal)
                            ],),
                            CustomHeightSizedBox(percentage: .1),

                            Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                              Stack(children: [
                                Container(child: CustomImage(path: "assets/circle.png", givenHeight:height*.2, givenWidth: null)
                                  ,),
                                Container(child: CustomImage(path: "assets/true.png", givenHeight:height*.2, givenWidth: null)
                                  ,)
                              ],)
                            ],),
                            CustomHeightSizedBox(percentage: .03),
                            Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                              CustomText(text: "Payment Succeeded", size: height*.025, color: mainColor, weight: FontWeight.normal)
                            ],),
                            CustomHeightSizedBox(percentage: .05),
                            Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                              CustomText(text: "for another tour press OK", size: 12, color: mainColor, weight: FontWeight.w100)
                            ],),
                            CustomHeightSizedBox(percentage: .06),
                            Container(width: width*.7,
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                                InkWell(onTap:(){

                                    SystemChannels.platform
                                        .invokeMethod('SystemNavigator.pop');

                                },
                                  child: Container(height: height*.05,width: width*.27,decoration: BoxDecoration(color:
                                  mainColor,borderRadius: BorderRadius.all(Radius.circular(10))),child:
                                  Center(child: CustomText(text: "Log out", size: 15, color: Colors.white, weight: FontWeight.bold))
                                    ,),
                                ),
                                InkWell(onTap:(){
                                  Navigator.pushReplacement(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation1, animation2) {
                                        return Home();
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


                                },
                                  child: Container(height: height*.05,width: width*.27,decoration: BoxDecoration(border:
                                  Border.all(color: mainColor),
                                      color:
                                  Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),child:
                                  Center(child: CustomText(text: "Ok", size: 15, color: mainColor, weight: FontWeight.bold))
                                    ,),
                                )
                              ],),
                            ),


                          ],),)
                          
                        ],),
                        

                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
