import 'package:flutter/material.dart';
import 'package:yourtour/constants/colors.dart';
import 'package:yourtour/screens/selectDate.dart';
import '../widgets.dart';
class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}
class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomHeightSizedBox(percentage: .05),
              imagePart(),
              ratingPart(),
              CustomHeightSizedBox(percentage: .01),
              locationPart(),
              CustomHeightSizedBox(percentage: .01),
              overviewPart(),
              CustomHeightSizedBox(percentage: .01),
              descriptionPart(),
              CustomHeightSizedBox(percentage: .04),
              bookPart(),
            ],
          ),
        ),
      ),
    );
  }
  imagePart(){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Stack(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width * .9,
                height: height * .55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
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
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: height * .55,
                width: width * .9,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      "assets/big.jpg",
                      fit: BoxFit.fill,
                      height: height * .07,
                    )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ],
          ),
          Container(height: height*.57,width: width*.9,child: Column(

            children: [
              CustomHeightSizedBox(percentage: .01),
              Row(mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  CustomWidthSizedBox(percentage: .035,),
                  InkWell(onTap: (){
                    Navigator.of(context).pop();
                  },
                    child: Container(height: height*.05,width: height*.05,decoration:
                    BoxDecoration(color: mainColor,shape: BoxShape.circle),child: Center(child:
                    Image.asset("assets/prev.png",height: height*.15,width: width*.2,),),),
                  )

                ],
              ),CustomHeightSizedBox(percentage: .45),
              Row(mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  InkWell(onTap: (){
                    Navigator.of(context).pop();
                  },
                    child: Container(height: height*.06,width: height*.06,decoration:
                    BoxDecoration(color: Colors.white,shape: BoxShape.circle),child: Center(child:
                    Image.asset("assets/blueHeart.png",height: height*.1,width: width*.15,),),),
                  ),


                ],
              )

            ],
          ),)
        ],
      ),
    );
  }
  ratingPart(){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(padding: EdgeInsets.only(left: width*.08),
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
    children: [
      CustomText(text: "Big Ben", size: 15, color: mainColor, weight: FontWeight.bold),
      CustomWidthSizedBox(percentage: .04),
      Icon(Icons.star,color: Colors.yellow,size: 20,),
      CustomWidthSizedBox(percentage: .01),

      CustomText(text: "4.9", size: 12, color: mainColor, weight: FontWeight.bold),

    ],
      ),
    );
  }
  locationPart(){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(padding: EdgeInsets.only(left: width*.04),
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomWidthSizedBox(percentage: .01),
          CustomImage(path: "assets/location.png", givenHeight: height*.04, givenWidth: null),
          CustomWidthSizedBox(percentage: .01),

          CustomText(text: "Westminister,London,England", size: 10, color:greyColor, weight: FontWeight.bold),
          CustomWidthSizedBox(percentage: .05),

          CustomImage(path: "assets/time.png", givenHeight: height*.04, givenWidth: null),
          CustomWidthSizedBox(percentage: .01),

          CustomText(text: "From 2 to 3 hrs", size: 10, color:greyColor, weight: FontWeight.bold),


        ],
      ),
    );
  }
  overviewPart(){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container( padding: EdgeInsets.only(left: width*.08),
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [

          CustomText(text: "Overview ", size: 13, color:mainColor, weight: FontWeight.bold),


        ],
      ),
    );
  }
  descriptionPart(){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(padding: EdgeInsets.only(left: width*.08),
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Expanded(
            child: CustomText(text: "Big Ben is the nickname for the Great Bell of the "
                "striking clock at the north end of the Palace of ... London skyline with Big Ben "
                "and environs", size: 11, color:greyColor,
                weight: FontWeight.bold),
          ),


        ],
      ),
    );
  }
  bookPart(){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
      width: width*.95,height: height*.11,decoration: BoxDecoration(color: Colors.white
          ,borderRadius: BorderRadius.all(Radius.circular(30))),child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          Container(width: width*.2,
            child: Column(
            children: [
              CustomHeightSizedBox(percentage: .02),
              CustomText(text: "Your trip", size: height*.02, color:greyColor, weight: FontWeight.bold),
              CustomText(text: "2499 LE", size:  height*.02, color:mainColor, weight: FontWeight.bold),


            ],
          ),),
          CustomButton(givenHeight: height*.08, givenWidth: width*.35, buttonColor: mainColor, text: "Book Now",
              fontSize: 20, textColor: Colors.white, onTapFunction: (){
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) {
                    return Date();
                  },
                  transitionsBuilder:
                      (context, animation8, animation15, child) {
                    return FadeTransition(
                      opacity: animation8,
                      child: child,
                    );
                  },
                  transitionDuration: Duration(milliseconds: 30),
                ),
              );

            }, radius: 25,fontWieght: FontWeight.bold,)

        ],
      ),

    ),

      ],);

  }
}
