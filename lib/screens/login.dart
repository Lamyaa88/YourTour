import 'package:flutter/material.dart';
import 'package:yourtour/constants/colors.dart';
import 'package:yourtour/main.dart';
import 'package:yourtour/screens/login.dart';
import 'package:yourtour/screens/signUp.dart';
import 'package:yourtour/widgets.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width ;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(children: [
            Center(
                child: Container(

                    height: height,
                    width: width,

                    child: Image.asset("assets/air.jpeg" ,fit:BoxFit.fitWidth,)



                )),
            Center(
                child: Container(
                  color: Colors.white.withOpacity(.4),
                  height: height,
                  width: width,
                )),
            Column(children: [
              CustomHeightSizedBox(percentage: .2
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(text: "Sign in", size: 35, color: Colors.white, weight:FontWeight.bold),
                ],
              ),
              CustomHeightSizedBox(percentage: .1),
              Container(width: width*.9,height: height*.08,
                  decoration: BoxDecoration(border: Border.all(
                    color: mainColor,width: 3,
                  ),
                      borderRadius: BorderRadius.all(Radius.circular(20),
                      )
                  ),
                  child: CustomTextField(secure:false, hint: "Email", inputType: TextInputType.emailAddress)),
              CustomHeightSizedBox(percentage: .015),
              Container(width: width*.9,height: height*.08,
                  decoration: BoxDecoration(border: Border.all(
                    color: mainColor,width: 3,
                  ),
                      borderRadius: BorderRadius.all(Radius.circular(20),
                      )
                  ),
                  child: CustomTextField(secure:true, hint: "Password", inputType: TextInputType.text)),
              CustomHeightSizedBox(percentage: .015),
              Container(width: width*.8,
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomText(text: "Forget password", size: 13, color: mainColor, weight:FontWeight.normal),
                  ],
                ),
              ),

              CustomHeightSizedBox(percentage: .04),
              CustomButton(givenHeight: height*.08, givenWidth: width*.8, buttonColor: mainColor,
                  text: "Sign in", fontSize: 20, textColor: Colors.white, onTapFunction: (){
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

                  }, radius: 30),
              CustomHeightSizedBox(percentage: .01),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  CustomText(text: "Don\'t have an account ? ", size: 12, color: mainColor, weight:FontWeight.normal),
                  InkWell(onTap:(){
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) {
                          return SignUp();
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
                      child: CustomText(text: "Sign up", size: 14, color: mainColor, weight:FontWeight.bold)),

                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  CustomText(text: "or", size: 12, color: mainColor, weight:FontWeight.normal),

                ],
              ),
              CustomHeightSizedBox(percentage: .01),

      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            borderRadius:   BorderRadius.all(Radius.circular(height*.03)),splashColor: Colors.white,
            onTap:(){},
            child: Container(
              height:height*.065,width:width*.5,child: Center(child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sign in with "
                  ,style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold ,fontSize: 15),),
                  CustomImage(path: "assets/facebook.png", givenHeight: height*.07, givenWidth: width*.1)
                ],
              )
            ),decoration:
            BoxDecoration(color: mainColor,borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ],
      ),
              CustomHeightSizedBox(percentage: .01),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    borderRadius:   BorderRadius.all(Radius.circular(height*.03)),splashColor: Colors.white,
                    onTap:(){},
                    child: Container(
                      height:height*.065,width:width*.5,child: Center(child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Sign in with "
                          ,style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold ,fontSize: 15),),
                        Container(padding: EdgeInsets.only(top: 10),
                            child: CustomImage(path: "assets/twitter.png", givenHeight: height*.1, givenWidth: width*.1))
                      ],
                    )
                    ),decoration:
                    BoxDecoration(color: mainColor,borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                ],
              )











            ],)


          ]
          ),
        )

    );
  }
}
