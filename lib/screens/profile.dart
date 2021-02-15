import 'package:flutter/material.dart';
import 'package:yourtour/constants/colors.dart';
import 'package:yourtour/screens/compass.dart';
import '../widgets.dart';
import 'home.dart';
import 'liked.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(backgroundColor: secondaryColor,
      body: SingleChildScrollView(child: Stack(
        children: [
          Column(
            children: [
              CustomHeightSizedBox(percentage: .25),
              Container(width: width,height: height*.67,
                decoration: BoxDecoration(color: Colors.white,borderRadius:
                  BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40),)),)
            ],
          ),
        Column(
          children: [
            CustomHeightSizedBox(percentage: .05),
            notificationRow(),
            CustomHeightSizedBox(percentage: .0),
            yourProfile(),
            CustomHeightSizedBox(percentage: .01),
            profilePhoto(),
            CustomHeightSizedBox(percentage: .01),
            name(),
            CustomHeightSizedBox(percentage: .01),
            email(),
            CustomHeightSizedBox(percentage: .01),
            dataRow("Edit Profile","assets/edit.png"),
            CustomHeightSizedBox(percentage: .01),
            divider(),
            dataRow("My Booking","assets/calender.png"),
            CustomHeightSizedBox(percentage: .01),
            divider(),
            dataRow("My Cards","assets/idCard.png"),
            CustomHeightSizedBox(percentage: .01),
            divider(),
            dataRow("Settings","assets/settings.png"),
            CustomHeightSizedBox(percentage: .01),
            divider(),
            logOut(),
            CustomHeightSizedBox(percentage: .01),
            divider()
          ],
        ),
      ],)),
      bottomNavigationBar:customBottomNavigationBar()
    );
  }
  Widget notificationRow(){
   double height = MediaQuery.of(context).size.height;
   double width = MediaQuery.of(context).size.width;
    return Container(padding: EdgeInsets.only(left: width*.06,right: width*.02),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustomImage(path: "assets/logoBlue.png", givenHeight: height*.06, givenWidth: width*.15),

      CustomImage(path: "assets/notification.png", givenHeight: height*.06, givenWidth: width*.15)
    ],),);

 }
  Widget yourProfile(){
   double height = MediaQuery.of(context).size.height;
   double width = MediaQuery.of(context).size.width;
    return Container(child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
      CustomText(text: "Your Profile", size: height*.025, color:greyColor, weight: FontWeight.bold)
    ],),);
 }
  Widget profilePhoto(){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
      Stack(children: [
        CustomImage(path: "assets/girl.png", givenHeight: height*.175, givenWidth: width*.33),
        Container(padding: EdgeInsets.only(top: height*.12,left: width*.22),
          child:CustomImage(path: "assets/addPhoto.png", givenHeight: height*.05, givenWidth: width*.07),
            )

      ],)
    ],),);
  }
  Widget name(){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
      CustomImage(path: "assets/Jihad.png", givenHeight: height*.03, givenWidth: width*.15),

    ],),);
  }
  Widget email(){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
      CustomText(text: "jihad@gmail.com", size: height*.02, color:mainColor, weight: FontWeight.normal)
    ],),);
  }
  Widget dataRow(String text,String path){

   double height = MediaQuery.of(context).size.height;
   double width = MediaQuery.of(context).size.width;
   return Container(padding: EdgeInsets.only(left: width*.05,right: width*.05),
     child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Container(child: Row(children: [

           CustomImage(path: path, givenHeight: height*.04, givenWidth: width*.081),
           CustomText(text: text, size: height*.02, color:mainColor, weight: FontWeight.normal),


         ],)),
         Container(child:      CustomImage(path: "assets/showDetails.png", givenHeight: height*.02, givenWidth: width*.1),
             )

       ],
     ),
   );

  }
  Widget divider(){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(padding: EdgeInsets.only(right: width*.02,bottom: height*.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(color: greyColor,height: height*.0005,width: width*.88,),
        ],
      ),
    );

  }
  Widget logOut(){

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(padding: EdgeInsets.only(left: width*.05,right: width*.05),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(child: Row(children: [
            CustomImage(path: "assets/logOut.png", givenHeight: height*.04, givenWidth: width*.081),


            CustomText(text: "logout", size: height*.02, color:mainColor, weight: FontWeight.normal),


          ],)),


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
                    Navigator.push(
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
                        path: "assets/greyHeart.png",
                        givenHeight: height * .07,
                      ),
                    ),
                  ),
                  Container(
                    child: CustomImage(
                      path: "assets/blueUser.png",
                      givenHeight: height * .07,
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
