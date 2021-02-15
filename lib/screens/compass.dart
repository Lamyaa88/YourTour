import 'dart:async';
import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yourtour/constants/colors.dart';
import 'package:yourtour/screens/profile.dart';
import '../widgets.dart';
import 'details.dart';
import 'home.dart';
import 'liked.dart';

class Compass extends StatefulWidget {
  @override
  _CompassState createState() => _CompassState();
}
class _CompassState extends State<Compass> {
  var markers = HashSet<Marker>();
  BitmapDescriptor customMarkerImage;
  getCustomMarker() async {
    customMarkerImage = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration.empty,
      'assets/big.jpg',
    );
  }
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center =
      const LatLng(51.50088279063643, -0.12463613076037813);
  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
    setState(() {
      markers.add(
        Marker(
            markerId: MarkerId("1"),
            position: LatLng(51.50088279063643, -0.12463613076037813),
            infoWindow: InfoWindow(title: "Big Ben",)),
      );
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    getCustomMarker();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
        backgroundColor: secondaryColor,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  CustomHeightSizedBox(percentage: .04),
                  map(),
                  CustomHeightSizedBox(percentage: .01),
                  nearYou(),
                  CustomHeightSizedBox(percentage: .01),
                  sliderPart()
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [CustomHeightSizedBox(percentage: .08), searchPart()],
              ),
            ],
          ),
        ),
        bottomNavigationBar: customBottomNavigationBar()
    );
  }
  Widget map() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration:
              BoxDecoration(border: Border.all(color: mainColor, width: 4)),
          width: width * .99,
          height: height * .61,
          child: GoogleMap(
            onMapCreated: _onMapCreated,
            markers: markers,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
          ),
        ),
      ],
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
  Widget sliderPart() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * .2,
      width: width,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        imageBox('assets/londonWest.jpg'),
        CustomWidthSizedBox(percentage: .02),
        imageBox('assets/londonEye.png'),
        CustomWidthSizedBox(percentage: .02),
        imageBox('assets/londonTour.jpg'),
      ]),
    );
  }
  Widget imageBox(String path ){
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
                                padding:
                                EdgeInsets.only(right: width * .08),
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
    ) ;
  }
  Widget nearYou() {
    return Container(
      padding: EdgeInsets.only(left: 9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomText(
              text: "Near you",
              size: 14,
              color: greyColor,
              weight: FontWeight.bold)
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
                  InkWell(
                    onTap: () {
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
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
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
                        path: "assets/blueCompass.png",
                        givenHeight: height * .07,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
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
                      Navigator.pushReplacement(
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
