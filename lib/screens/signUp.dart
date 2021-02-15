import 'package:flutter/material.dart';
import 'package:yourtour/constants/colors.dart';
import 'package:yourtour/screens/login.dart';
import 'package:yourtour/screens/signUp.dart';
import 'package:yourtour/screens/start.dart';
import 'package:yourtour/widgets.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  CustomText(text: "Sign up", size: 35, color: Colors.white, weight:FontWeight.bold),
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
                  child: CustomTextField(secure:false, hint: "Name", inputType: TextInputType.emailAddress)),
              CustomHeightSizedBox(percentage: .015),
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
              CustomHeightSizedBox(percentage: .06),
              CustomButton(givenHeight: height*.08, givenWidth: width*.8, buttonColor: mainColor,
                  text: "Sign up", fontSize: 20, textColor: Colors.white, onTapFunction: (){
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) {
                          return Start();
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
              CustomHeightSizedBox(percentage: .03),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  CustomText(text: "Already have an account ? ", size: 12, color: mainColor, weight:FontWeight.normal),
                  InkWell(onTap:(){
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


                  },
                      child: CustomText(text: "Sign in", size: 14, color: mainColor, weight:FontWeight.bold)),

                ],
              ),






            ],)


          ]
          ),
        )

    );
  }
}
