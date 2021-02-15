import 'package:flutter/material.dart';
import 'package:yourtour/constants/colors.dart';
import 'package:yourtour/screens/compass.dart';
import 'package:yourtour/screens/details.dart';
import 'package:yourtour/screens/home.dart';
import 'package:yourtour/screens/profile.dart';
import '../widgets.dart';
class LikedPlaces extends StatefulWidget {
  @override
  _LikedPlacesState createState() => _LikedPlacesState();
}
class _LikedPlacesState extends State<LikedPlaces> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Container(
          child: Column(
            children: [
              CustomHeightSizedBox(percentage: .05),
              topPart(),
              CustomHeightSizedBox(percentage: .01),
              likedPart(),
              CustomHeightSizedBox(percentage: .01),
              imagesPart()
            ],
          ),
        ),
      bottomNavigationBar:customBottomNavigationBar()
    );
  }
  Widget topPart() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(right: width * .02, left: width * .02),
      height: height * .04,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
              text: "Check your ",
              size: 15,
              color: greyColor,
              weight: FontWeight.w900),
          CustomImage(
              path: "assets/logoBlue.png",
              givenHeight: null,
              givenWidth: width * .2)
        ],
      ),
    );
  }
  Widget likedPart() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(right: width * .02, left: width * .02),
      height: height * .04,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImage(
              path: "assets/liked.png",
              givenHeight: null,
              givenWidth: width * .4)
        ],
      ),
    );
  }
  Widget imagesPart() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height *.75,
      width: width,
      child: ListView(scrollDirection: Axis.vertical, children: [
       imageBox("assets/tag.jpg"),
        CustomHeightSizedBox(percentage: .025),
        imageBox("assets/ph1.jpg"),
        CustomHeightSizedBox(percentage: .025),
        imageBox("assets/ph2.jpg"),
        CustomHeightSizedBox(percentage: .025),
        imageBox("assets/ph3.jpg"),
        CustomHeightSizedBox(percentage: .025),
        imageBox("assets/ph4.jpg"),
        CustomHeightSizedBox(percentage: .025),
        imageBox("assets/ph5.jpg"),
        CustomHeightSizedBox(percentage: .025),
        imageBox("assets/ph7.jpg"),
        CustomHeightSizedBox(percentage: .025),
        imageBox("assets/ph9.jpg"),
        CustomHeightSizedBox(percentage: .025),
        imageBox("assets/ph8.jpg"),
        CustomHeightSizedBox(percentage: .025),
        imageBox("assets/ph11.jpg"),
        CustomHeightSizedBox(percentage: .025),
        imageBox("assets/ph13.jpg"),
        CustomHeightSizedBox(percentage: .025),
      ]),
    );
  }
  Widget imageBox(String path){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  InkWell(onTap: (){
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) {
            return Details();
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
      child: Row(mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Container(
            child: Stack(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: height * .4,
                      width: width * .9,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(height * .03),
                          child: Image.asset(
                            path,
                            fit: BoxFit.cover,
                            height: height * .1,
                          )),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                  ],
                ),
                Container(
                  height: height * .4,
                  width: width * .9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomImage(
                              path: "assets/blueHeart.png",
                              givenHeight: height * .06,
                              givenWidth: width * .1)
                        ],
                      ),
                      CustomHeightSizedBox(percentage: .25),
                      Container(
                        padding: EdgeInsets.only(left: width * .003),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomText(
                                text: " LOrum Ipsum",
                                size: height * .02,
                                color: Colors.white,
                                weight: FontWeight.w700),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: width * .003),
                        child: Row(
                          children: [
                            CustomText(
                                text: " lloun lomwe ",
                                size: height * .016,
                                color: Colors.white,
                                weight: FontWeight.w700),
                            Container(
                              width: width * .1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: height * .02,
                                  ),
                                  CustomText(
                                      text: "4.9",
                                      size: height * .016,
                                      color: Colors.white,
                                      weight: FontWeight.w700),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0),
                      borderRadius:
                      BorderRadius.all(Radius.circular(height * .03))),
                )
              ],
            ),
          ),
        ],
      ),
    );
    
  }
  Widget customBottomNavigationBar(){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: greyColor,
                  blurRadius: 10.0,
                ),
              ],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                topLeft: Radius.circular(8),
              )),
          height: height * .08,
          width: width,
          child: Center(
            child: Container(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(onTap: (){
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
                    child: Container(
                      child: CustomImage(
                        path: "assets/homeGrey.png",
                        givenHeight: height * .07,
                      ),
                    ),
                  ),
                  InkWell(onTap: (){
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) {
                          return Compass();
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
                    child: Container(
                      child: CustomImage(
                        path: "assets/compass.png",
                        givenHeight: height * .07,
                      ),
                    ),
                  ),
                  InkWell(onTap: (){
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) {
                          return LikedPlaces();
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
                    child: Container(
                      child: CustomImage(
                        path: "assets/blueHeart.png",
                        givenHeight: height * .07,
                      ),
                    ),
                  ),
                  InkWell(onTap: (){
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) {
                          return Profile();
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
                    child: Container(
                      child: CustomImage(
                        path: "assets/user.png",
                        givenHeight: height * .07,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }



}
