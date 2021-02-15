import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yourtour/constants/colors.dart';
import 'package:yourtour/screens/compass.dart';
import 'package:yourtour/screens/details.dart';
import 'package:yourtour/screens/liked.dart';
import 'package:yourtour/screens/profile.dart';
import '../widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: secondaryColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomHeightSizedBox(percentage: .06),
              topPart(),
              CustomHeightSizedBox(percentage: .02),
              letsPart(),
              CustomHeightSizedBox(percentage: .02),
              searchPart(),
              CustomHeightSizedBox(percentage: .02),
              categoriesPart(),
              CustomHeightSizedBox(percentage: .008),
              mostPart(),
              CustomHeightSizedBox(percentage: .01),
              firstSliderPart(),
              CustomHeightSizedBox(percentage: .0),
              recommendedPart(),
              CustomHeightSizedBox(percentage: .01),
              secondSliderPart(),
            ],),),
        bottomNavigationBar: customBottomNavigationBar());}
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
              text: "Hello My Dear !",
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
  Widget letsPart() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(right: width * .02, left: width * .02),
      height: height * .04,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImage(
              path: "assets/lets.png",
              givenHeight: null,
              givenWidth: width * .4)
        ],
      ),
    );
  }
  Widget searchPart() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(right: width * .01, left: width * .02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            height: height * .07,
            width: width * .7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Colors.white),
            child: Center(
              child: TextFormField(
                keyboardType: TextInputType.text,
                style: TextStyle(color: mainColor, fontSize: 13),
                obscureText: false,
                cursorColor: mainColor,
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: "Type here to search",
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: mainColor)),
                ),
              ),
            ),
          ),
          CustomWidthSizedBox(percentage: .01),
          Container(
            height: height * .07,
            width: width * .23,
            padding: EdgeInsets.only(top: height * .01),
            child: Center(child: Image.asset("assets/filter.png")),
            decoration: BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.circular(15),
            ),
          )
        ],
      ),
    );
  }
  Widget categoriesPart() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              child: Column(
            children: [
              CustomText(
                  text: "Sights",
                  size: height * .02,
                  color: mainColor,
                  weight: FontWeight.normal),
              Container(
                height: height * .016,
                width: height * .016,
                decoration:
                    BoxDecoration(color: mainColor, shape: BoxShape.circle),
              )
            ],
          )),
          Container(
              child: Column(
            children: [
              CustomText(
                  text: "Experiences",
                  size: height * .02,
                  color: greyColor,
                  weight: FontWeight.normal),
              Container(
                height: height * .016,
                width: height * .016,
                decoration:
                    BoxDecoration(color: greyColor, shape: BoxShape.circle),
              )
            ],
          )),
          Container(
              child: Column(
            children: [
              CustomText(
                  text: "Adventures",
                  size: height * .02,
                  color: greyColor,
                  weight: FontWeight.normal),
              Container(
                height: height * .016,
                width: height * .016,
                decoration:
                    BoxDecoration(color: greyColor, shape: BoxShape.circle),
              )
            ],
          ))
        ],
      ),
    );
  }
  Widget mostPart() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: width * .01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomText(
            text: "Most visited",
            size: height * .026,
            color: greyColor,
          )
        ],
      ),
    );
  }
  Widget firstSliderPart() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * .3,
      width: width,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        imageBoxForFirstSlider("assets/big.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForFirstSlider("assets/sphinx.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForFirstSlider("assets/tag.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForFirstSlider("assets/ph1.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForFirstSlider("assets/ph2.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForFirstSlider("assets/ph3.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForFirstSlider("assets/ph4.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForFirstSlider("assets/ph5.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForFirstSlider("assets/ph9.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForFirstSlider("assets/ph7.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForFirstSlider("assets/ph8.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForFirstSlider("assets/ph9.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForFirstSlider("assets/ph11.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForFirstSlider("assets/ph12.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForFirstSlider("assets/ph13.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForFirstSlider("assets/photo.jpg"),
        CustomWidthSizedBox(percentage: .02),



      ]),
    );
  }
  Widget imageBoxForFirstSlider(String path ){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) {
              return Details();
            },
            transitionsBuilder: (context, animation8, animation15, child) {
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
        child: Stack(
          children: [
            Container(
              height: height * .3,
              width: width * .5,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(height * .03),
                  child: Image.asset(
                    path,
                    fit: BoxFit.fill,
                    height: height * .1,
                  )),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            Container(
              height: height * .3,
              width: width * .5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomImage(
                          path: "assets/greyHeart.png",
                          givenHeight: height * .06,
                          givenWidth: width * .1)
                    ],
                  ),
                  CustomHeightSizedBox(percentage: .16),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  color: Colors.blue.withOpacity(.1),
                  borderRadius:
                  BorderRadius.all(Radius.circular(height * .03))),
            )
          ],
        ),
      ),
    );
    
  }
  Widget recommendedPart() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: width * .01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomText(
            text: "Recommended",
            size: height * .025,
            color: greyColor,
          )
        ],
      ),
    );
  }
  Widget secondSliderPart() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * .2,
      width: width,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        imageBoxForSecondSlider("assets/ph1.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForSecondSlider("assets/ph2.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForSecondSlider("assets/ph3.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForSecondSlider("assets/ph4.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForSecondSlider("assets/ph5.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForSecondSlider("assets/ph7.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForSecondSlider("assets/ph8.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForSecondSlider("assets/ph9.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForSecondSlider("assets/ph11.jpg"),
        CustomWidthSizedBox(percentage: .02),
        imageBoxForSecondSlider("assets/ph12.jpg"),
      ]),
    );
  }
  Widget imageBoxForSecondSlider(String path) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) {
              return Details();
            },
            transitionsBuilder: (context, animation8, animation15, child) {
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
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  width: width * .7,
                  height: height * .18,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: width * .02),
                        child: Column(
                          children: [
                            CustomHeightSizedBox(percentage: .03),
                            CustomText(
                                text: " lorum ipsum",
                                size: height * .02,
                                color: mainColor,
                                weight: FontWeight.w700),
                            CustomHeightSizedBox(percentage: .015),
                            Container(
                                padding: EdgeInsets.only(right: width * .08),
                                child: CustomText(
                                    text: " llun lomwe ",
                                    size: height * .015,
                                    color: mainColor,
                                    weight: FontWeight.normal)),
                            CustomHeightSizedBox(percentage: .02),
                            Container(
                              padding: EdgeInsets.only(right: width * .15),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: height * .02,
                                  ),
                                  CustomText(
                                      text: "4.9",
                                      size: height * .012,
                                      color: mainColor,
                                      weight: FontWeight.w700),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: height * .18,
                  width: width * .35,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        path,
                        fit: BoxFit.fill,
                        height: height * .07,
                      )),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget customBottomNavigationBar() {
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
                  Container(
                    child: CustomImage(
                      path: "assets/home.png",
                      givenHeight: height * .07,
                    ),
                  ),
                  InkWell(
                    onTap: () {
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
                  InkWell(
                    onTap: () {
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
                        path: "assets/greyHeart.png",
                        givenHeight: height * .07,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
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
