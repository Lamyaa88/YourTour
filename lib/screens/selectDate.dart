import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:yourtour/constants/colors.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:yourtour/screens/confirm.dart';
import 'package:yourtour/widgets.dart';
class Date extends StatefulWidget {
  @override
  _DateState createState() => _DateState();
}
class _DateState extends State<Date> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  SfRangeValues sliderValue = SfRangeValues(0.0, 60.0);
//  SfRangeValues sliderValue2 = SfRangeValues(0.0, 60.0);
  String minutes = "";
  DateTime selectedDate = DateTime.now();
  String date = "15/2/2021";
  String countryValue;
  String stateValue;
  String cityValue;
  String destinationCountry = ".....";
  String destinationState = ".....";
  String destinationCity = ".....";
  bool selectedHour1 = false;
  bool selectedHour2 = false;
  bool selectedHour3 = false;
  bool selectedHour4 = false;
  bool selectedHour5 = false;
  bool selectedHour6 = false;
  bool selectedHour7 = false;
  bool selectedHour8 = false;
  bool selectedHour9 = false;
  bool selectedHour10 = false;
  String bookingHour = '';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: secondaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomHeightSizedBox(percentage: .05),
            Container(
              padding: EdgeInsets.only(left: width * .02, right: width * .02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImage(
                      path: "assets/prev.png",
                      givenHeight: height * .05,
                      givenWidth: height * .06),
                  InkWell(
                    onTap: () {
                    },
                    child: CustomImage(
                        path: "assets/notification.png",
                        givenHeight: height * .05,
                        givenWidth: height * .06),
                  )
                ],
              ),
            ),
            CustomHeightSizedBox(percentage: .0),
            Container(
              padding: EdgeInsets.only(left: width * .1, right: width * .02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                      text: "Book Your Trip",
                      size: 17,
                      color: mainColor,
                      weight: FontWeight.bold)
                ],
              ),
            ),
            CustomHeightSizedBox(percentage: .015),
            Container(
              padding: EdgeInsets.only(left: width * .04, right: width * .02),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: height * .05,
                        width: width * .4,
                        decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: Center(
                          child: CustomText(
                            text: "One Way",
                            size: 15,
                            color: Colors.white,
                          ),
                        )),
                    Container(
                        height: height * .05,
                        width: width * .4,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: Center(
                          child: CustomText(
                            text: "Round Trip",
                            size: 15,
                            color: mainColor,
                          ),
                        ))
                  ]),
            ),
            CustomHeightSizedBox(percentage: .03),
   //   ============================================================================================================== (date)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: Row(
                      children: [
                        Container(
                          width: width * .5,
                          child: Column(
                            children: [
                              CustomHeightSizedBox(percentage: .008),


                              Container(padding:
                              EdgeInsets.only(right: width * .12),
                                child: CustomText(
                                    text: "date & Time",
                                    size: 14,
                                    color: greyColor,
                                    weight: FontWeight.bold),
                              ),
                              CustomHeightSizedBox(percentage: .0),
                              Row(
                                children: [
                                  Theme(
                                    data: Theme.of(context).copyWith(
                                        primaryColor: Colors.black,
                                        selectedRowColor: Colors.black,
                                        accentColor: mainColor,
                                        colorScheme: ColorScheme.light(
                                          primary: mainColor,
                                        )),
                                    child: new Builder(
                                      builder: (context) => Container(
                                        padding:
                                        EdgeInsets.only(top: 6,left: 15),
                                        child: new InkWell(
                                            child: CustomImage(
                                                path: "assets/calender.png",
                                                givenHeight: height * .05,
                                                givenWidth: width * .1),
                                            onTap: () => _selectDate(context)),
                                      ),
                                    ),
                                  ),
                                  CustomText(
                                      text: ("${date}".split(" ")[0]),
                                      size: 12,
                                      color: mainColor,
                                      weight: FontWeight.normal),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: width * .4,
                          child: Column(
                            children: [
                              CustomHeightSizedBox(percentage: .04),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: ()async {
                                     await
                                     showInformationDialog(context);
                                    },
                                    child: Container(
                                      child: CustomImage(
                                          path: "assets/time.png",
                                          givenHeight: height * .04,
                                          givenWidth: width * .1),
                                      padding:
                                          EdgeInsets.only(left: width * .04,top: 8),
                                    ),
                                  ),
                                  CustomText(
                                      text: "7:30",
                                      size: 12,
                                      color: mainColor,
                                      weight: FontWeight.normal),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    width: width * .9,
                    height: height * .1,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))))
              ],
            ),
CustomHeightSizedBox(percentage: .015),
//            ============================================================================================================== (pick)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: Row(
                      children: [
                        Container(
                          width: width * .5,
                          child: Column(
                            children: [
                              CustomHeightSizedBox(percentage: .008),


                              Container(padding:
                              EdgeInsets.only(right: width * .18),
                                child: CustomText(
                                    text: "Pick up",
                                    size: 14,
                                    color: greyColor,
                                    weight: FontWeight.bold),
                              ),
                              CustomHeightSizedBox(percentage: .0),
                              Row(
                                children: [
                                  Theme(
                                    data: Theme.of(context).copyWith(
                                        primaryColor: Colors.black,
                                        selectedRowColor: Colors.black,
                                        accentColor: mainColor,
                                        colorScheme: ColorScheme.light(
                                          primary: mainColor,
                                        )),
                                    child: new Builder(
                                      builder: (context) => Container(
                                        padding:
                                        EdgeInsets.only(top: 6,left: 15),
                                        child: new InkWell(
                                            child: CustomImage(
                                                path: "assets/location.png",
                                                givenHeight: height * .05,
                                                givenWidth: width * .1),
                                            onTap: () {
                                              showDialog(
                                                context: context,
                                                builder: (context) => FittedBox(
                                                  alignment: Alignment.topCenter,
                                                  child: AlertDialog(
                                                    backgroundColor: mainColor,
                                                    title: Text(
                                                      'Pick Up',
                                                      style: TextStyle(color: Colors.white),
                                                    ),
                                                    content: selectDestination(),
                                                    actions: <Widget>[
                                                      FlatButton(
                                                        onPressed: () {
                                                          Navigator.of(context, rootNavigator: true)
                                                              .pop(); // dismisses only the dialog and returns nothing
                                                        },
                                                        child: Text('Done',style: TextStyle(color: Colors.white),),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            }),
                                      ),
                                    ),
                                  ),
                                  CustomText(
                                      text: "Cairo,Egypt",
                                      size: 13,
                                      color: mainColor,
                                      weight: FontWeight.normal),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: width * .4,
                          child: Column(
                            children: [
                              CustomHeightSizedBox(percentage: .04),

                            ],
                          ),
                        )
                      ],
                    ),
                    width: width * .9,
                    height: height * .1,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))))
              ],
            ),
            CustomHeightSizedBox(percentage: .015),
//            ============================================================================================================== (dest)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: Row(
                      children: [
                        Container(
                          width: width * .5,
                          child: Column(
                            children: [
                              CustomHeightSizedBox(percentage: .008),


                              Container(padding:
                              EdgeInsets.only(right: width * .12),
                                child: CustomText(
                                    text: "Destination",
                                    size: 14,
                                    color: greyColor,
                                    weight: FontWeight.bold),
                              ),
                              CustomHeightSizedBox(percentage: .0),
                              Row(
                                children: [
                                  Theme(
                                    data: Theme.of(context).copyWith(
                                        primaryColor: Colors.black,
                                        selectedRowColor: Colors.black,
                                        accentColor: mainColor,
                                        colorScheme: ColorScheme.light(
                                          primary: mainColor,
                                        )),
                                    child: new Builder(
                                      builder: (context) => Container(
                                        padding:
                                        EdgeInsets.only(top: 6,left: 15),
                                        child: new InkWell(
                                            child: CustomImage(
                                                path: "assets/compass.png",
                                                givenHeight: height * .05,
                                                givenWidth: width * .1),
                                            onTap: (){})
                                      ),
                                    ),
                                  ),
                                  CustomText(
                                      text: "England,London",
                                      size: 13,
                                      color: mainColor,
                                      weight: FontWeight.normal),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: width * .4,
                          child: Column(
                            children: [
                              CustomHeightSizedBox(percentage: .04),

                            ],
                          ),
                        )
                      ],
                    ),
                    width: width * .9,
                    height: height * .1,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))))
              ],
            ),CustomHeightSizedBox(percentage: .015),
//            ============================================================================================================== (per)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: Row(
                      children: [
                        Container(
                          width: width * .5,
                          child: Column(
                            children: [
                              CustomHeightSizedBox(percentage: .008),


                              Container(padding:
                              EdgeInsets.only(right: width * .2),
                                child: CustomText(
                                    text: "Persons",
                                    size: 14,
                                    color: greyColor,
                                    weight: FontWeight.bold),
                              ),
                              CustomHeightSizedBox(percentage: .0),
                              Row(
                                children: [
                                  Theme(
                                    data: Theme.of(context).copyWith(
                                        primaryColor: Colors.black,
                                        selectedRowColor: Colors.black,
                                        accentColor: mainColor,
                                        colorScheme: ColorScheme.light(
                                          primary: mainColor,
                                        )),
                                    child: new Builder(
                                      builder: (context) => Container(
                                        padding:
                                        EdgeInsets.only(top: 6,left: 15),
                                        child: new InkWell(
                                            child: CustomImage(
                                                path: "assets/user.png",
                                                givenHeight: height * .05,
                                                givenWidth: width * .1),
                                            onTap: (){}),
                                      ),
                                    ),
                                  ),
                                  CustomText(
                                      text:"2 adults",
                                      size: 13,
                                      color: mainColor,
                                      weight: FontWeight.normal),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: width * .4,
                          child: Column(
                            children: [
                              CustomHeightSizedBox(percentage: .04),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                    },
                                    child: Container(
                                      child: CustomImage(
                                          path: "assets/prev2.png",
                                          givenHeight: height * .04,
                                          givenWidth: width * .1),
                                      padding:
                                      EdgeInsets.only(left:80,top: 2),
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    width: width * .9,
                    height: height * .1,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))))
              ],
            ),CustomHeightSizedBox(percentage: .015),
//            ============================================================================================================== (pay)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: Row(
                      children: [
                        Container(
                          width: width * .5,
                          child: Column(
                            children: [
                              CustomHeightSizedBox(percentage: .008),


                              Container(padding:
                              EdgeInsets.only(right: width * .2),
                                child: CustomText(
                                    text: "Payment",
                                    size: 14,
                                    color: greyColor,
                                    weight: FontWeight.bold),
                              ),
                              CustomHeightSizedBox(percentage: .0),
                              Row(
                                children: [
                                  Theme(
                                    data: Theme.of(context).copyWith(
                                        primaryColor: Colors.black,
                                        selectedRowColor: Colors.black,
                                        accentColor: mainColor,
                                        colorScheme: ColorScheme.light(
                                          primary: mainColor,
                                        )),
                                    child: new Builder(
                                      builder: (context) => Container(
                                        padding:
                                        EdgeInsets.only(top: 6,left: 15),
                                        child: new InkWell(
                                            child: CustomImage(
                                                path: "assets/payment.png",
                                                givenHeight: height * .035,
                                                givenWidth: width * .07),
                                            onTap: () {}),
                                      ),
                                    ),
                                  ),
                                  CustomText(
                                      text: "Master Card",
                                      size: 12,
                                      color: mainColor,
                                      weight: FontWeight.normal),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: width * .4,
                          child: Column(
                            children: [
                              CustomHeightSizedBox(percentage: .04),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                    },
                                    child: Container(
                                      child: CustomImage(
                                          path: "assets/prev2.png",
                                          givenHeight: height * .04,
                                          givenWidth: width * .1),
                                      padding:
                                      EdgeInsets.only(left:80,top: 2),
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    width: width * .9,
                    height: height * .1,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))))
              ],
            ),CustomHeightSizedBox(percentage: .015),
//            ============================================================================================================== (price)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: Row(
                      children: [
                        Container(
                          width: width * .5,
                          child: Column(
                            children: [
                              CustomHeightSizedBox(percentage: .008),


                              Container(padding:
                              EdgeInsets.only(right: width * .26),
                                child: CustomText(
                                    text: "Price",
                                    size: 14,
                                    color: greyColor,
                                    weight: FontWeight.bold),
                              ),
                              CustomHeightSizedBox(percentage: .0),
                              Row(
                                children: [
                                  Theme(
                                    data: Theme.of(context).copyWith(
                                        primaryColor: Colors.black,
                                        selectedRowColor: Colors.black,
                                        accentColor: mainColor,
                                        colorScheme: ColorScheme.light(
                                          primary: mainColor,
                                        )),
                                    child: new Builder(
                                      builder: (context) => Container(
                                        padding:
                                        EdgeInsets.only(top: 6,left: 15),
                                        child: new InkWell(
                                            child: CustomImage(
                                                path: "assets/price.png",
                                                givenHeight: height * .05,
                                                givenWidth: width * .1),
                                            onTap: () {}),
                                      ),
                                    ),
                                  ),
                                  CustomText(
                                      text: "2499.9 LE",
                                      size: 12,
                                      color: mainColor,
                                      weight: FontWeight.normal),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: width * .4,
                          child: Column(
                            children: [
                              CustomHeightSizedBox(percentage: .04),

                            ],
                          ),
                        )
                      ],
                    ),
                    width: width * .9,
                    height: height * .1,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))))
              ],
            ),

           CustomHeightSizedBox(percentage: .015),
            InkWell(onTap: (){
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) {
                    return Confirm();
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
                  height: 40,
                  width: width * .4,
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius:
                      BorderRadius.all(Radius.circular(20))),
                  child: Center(
                    child: CustomText(
                      text: "Book",
                      size: 20,weight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
            ),

          ],
        ),
      ),
    );
  }

  Widget rangeSlider() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: width,
          child: Center(
            child: SfRangeSlider(
              min: 0.0,
              max: 60.0,
              values: sliderValue,
              interval: 15,
              showTicks: false,
              stepSize: 15,
              activeColor: mainColor,
              endThumbIcon: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: mainColor, width: 2))),
              startThumbIcon: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: mainColor, width: 2))),
              showLabels: true,
              inactiveColor: mainColor,
              showDivisors: true,
              minorTicksPerInterval: 0,
              onChanged: (SfRangeValues values) {
                setState(() {
                  sliderValue = values;
                  print(sliderValue.end.round());
                  print(sliderValue.start.round());

                  minutes = sliderValue.end.round().toString();
                });
              },
            ),
          ),
        ),
      ],
    );
  }
  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2000, 8),
        fieldHintText: "sssssssss",
        errorFormatText: "eeeeeeeee",
        lastDate: DateTime(2030));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        date = picked.toLocal().toString();
      });
  }
  selectDestination() {
    return SelectState(
      onCountryChanged: (value) {
        setState(() {
          countryValue = value;
          print(value);
          destinationCountry = countryValue;
        });
      },
      onStateChanged: (value) {
        setState(() {
          stateValue = value;
          print(value);
          destinationState = stateValue;
        });
      },
      onCityChanged: (value) {
        setState(() {
          cityValue = value;
          destinationCity = cityValue;
          print(value);
        });
      },
    );
  }

  chooseCountry() {
    return Theme(
      data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
          selectedRowColor: Colors.black,
          accentColor: mainColor,
          colorScheme: ColorScheme.light(
            primary: mainColor,
          )),
      child: Builder(
        builder: (context) => InkWell(
            child: Icon(Icons.location_on),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => FittedBox(
                  alignment: Alignment.topCenter,
                  child: AlertDialog(
                    backgroundColor: mainColor,
                    title: Text(
                      'Pick Up',
                      style: TextStyle(color: Colors.white),
                    ),
                    content: selectDestination(),
                    actions: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true)
                              .pop(); // dismisses only the dialog and returns nothing
                        },
                        child: Text('Done'),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
  chooseDate() {
    return new Theme(
      data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
          selectedRowColor: Colors.black,
          accentColor: mainColor,
          colorScheme: ColorScheme.light(
            primary: mainColor,
          )),
      child: new Builder(
        builder: (context) => new InkWell(
            child: new Icon(Icons.date_range),
            onTap: () => _selectDate(context)),
      ),
    );
  }
  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(context: context,
        builder: (context){
          final TextEditingController _textEditingController = TextEditingController();
          bool isChecked = false;
          return StatefulBuilder(builder: (context,setState){
            return AlertDialog(
              content: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
//                      TextFormField(
//                        controller: _textEditingController,
//                        validator: (value){
//                          return value.isNotEmpty ? null : "Invalid Field";
//                        },
//                        decoration: InputDecoration(hintText: "Enter Some Text"),
//                      ),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: [
//                          Text("Choice Box"),
//                          Checkbox(value: isChecked, onChanged: (checked){
//                            setState((){
//                              isChecked = checked;
//                            });
//                          })
//                        ],
//                      ),
                      Row(children: [
                        CustomText(
                            text: "Select Time ",
                            size: 17,
                            color: mainColor,
                            weight: FontWeight.bold),

                      ],mainAxisAlignment: MainAxisAlignment.center,),
                      Row(children: [
                        CustomText(
                            text: "${bookingHour} : ${minutes}",
                            size: 17,
                            color: mainColor,
                            weight: FontWeight.bold),

                      ],mainAxisAlignment: MainAxisAlignment.center,),
                      CustomHeightSizedBox(percentage: .02),

                      Row(children: [
                      CustomText(
                          text: "Hrs",
                          size: 20,
                          color: greyColor,
                          weight: FontWeight.bold),

                    ],mainAxisAlignment: MainAxisAlignment.center,),
                      CustomHeightSizedBox(percentage: .02),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        InkWell(
                          child: Container(decoration: BoxDecoration(
                            color: selectedHour1==true?mainColor:Colors.white ,
                            shape: BoxShape.circle

                          ),child:Center(child: Text("1",style: TextStyle(
                              color: selectedHour1==false?mainColor:Colors.white),)),

                            height: 30,width: 30,),onTap: (){
                          setState((){
                            selectedHour1 = !selectedHour1;
                            bookingHour = "1";

                            print(selectedHour1);
                            print(selectedHour1);


                          });
                        },),
                        InkWell(
                          child: Container(decoration: BoxDecoration(
                              color: selectedHour2==true?mainColor:Colors.white ,
                              shape: BoxShape.circle

                          ),child:Center(child: Text("2",style: TextStyle(
                              color: selectedHour2==false?mainColor:Colors.white),)),

                            height: 30,width: 30,),onTap: (){
                          setState((){
                            selectedHour2 = !selectedHour2;
                            bookingHour = "2" ;
                            print(selectedHour2);



                          });
                        },), InkWell(
                          child: Container(decoration: BoxDecoration(
                              color: selectedHour3==true?mainColor:Colors.white ,
                              shape: BoxShape.circle

                          ),child:Center(child: Text("3",style: TextStyle(
                              color: selectedHour3==false?mainColor:Colors.white),)),

                            height: 30,width: 30,),onTap: (){
                          setState((){
                            selectedHour3 = !selectedHour3;
                            bookingHour = "3" ;
                            print(selectedHour3);
                            print(bookingHour);


                          });
                        },), InkWell(
                          child: Container(decoration: BoxDecoration(
                              color: selectedHour4==true?mainColor:Colors.white ,
                              shape: BoxShape.circle

                          ),child:Center(child: Text("4",style: TextStyle(
                              color: selectedHour4==false?mainColor:Colors.white),)),

                            height: 30,width: 30,),onTap: (){
                          setState((){
                            selectedHour4 = !selectedHour4;
                            bookingHour = "4" ;
                            print(selectedHour4);
                            print(bookingHour);


                          });
                        },), InkWell(
                          child: Container(decoration: BoxDecoration(
                              color: selectedHour5==true?mainColor:Colors.white ,
                              shape: BoxShape.circle

                          ),child:Center(child: Text("5",style: TextStyle(
                              color: selectedHour5==false?mainColor:Colors.white),)),

                            height: 30,width: 30,),onTap: (){
                          setState((){
                            selectedHour5 = !selectedHour5;
                            bookingHour = "5" ;
                            print(selectedHour5);
                            print(bookingHour);


                          });
                        },),
                      ],
                      ),
                      CustomHeightSizedBox(percentage: .03),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Container(decoration: BoxDecoration(
                                color: selectedHour6==true?mainColor:Colors.white ,
                                shape: BoxShape.circle

                            ),child:Center(child: Text("6",style: TextStyle(
                                color: selectedHour6==false?mainColor:Colors.white),)),

                              height: 30,width: 30,),onTap: (){
                            setState((){
                              selectedHour6 = !selectedHour6;
                              bookingHour = "6" ;
                              print(selectedHour6);
                              print(bookingHour);


                            });
                          },),
                          InkWell(
                            child: Container(decoration: BoxDecoration(
                                color: selectedHour7==true?mainColor:Colors.white ,
                                shape: BoxShape.circle

                            ),child:Center(child: Text("7",style: TextStyle(
                                color: selectedHour7==false?mainColor:Colors.white),)),

                              height: 30,width: 30,),onTap: (){
                            setState((){
                              selectedHour7 = !selectedHour7;
                              bookingHour = "7" ;
                              print(selectedHour7);
                              print(bookingHour);


                            });
                          },), InkWell(
                            child: Container(decoration: BoxDecoration(
                                color: selectedHour8==true?mainColor:Colors.white ,
                                shape: BoxShape.circle

                            ),child:Center(child: Text("8",style: TextStyle(
                                color: selectedHour8==false?mainColor:Colors.white),)),

                              height: 30,width: 30,),onTap: (){
                            setState((){
                              selectedHour8 = !selectedHour8;
                              bookingHour = "8" ;
                              print(selectedHour8);
                              print(bookingHour);


                            });
                          },), InkWell(
                            child: Container(decoration: BoxDecoration(
                                color: selectedHour9==true?mainColor:Colors.white ,
                                shape: BoxShape.circle

                            ),child:Center(child: Text("9",style: TextStyle(
                                color: selectedHour9==false?mainColor:Colors.white),)),

                              height: 30,width: 30,),onTap: (){
                            setState((){
                              selectedHour9 = !selectedHour9;
                              bookingHour = "9" ;
                              print(selectedHour9);
                              print(bookingHour);


                            });
                          },), InkWell(
                            child: Container(decoration: BoxDecoration(
                                color: selectedHour10==true?mainColor:Colors.white ,
                                shape: BoxShape.circle

                            ),child:Center(child: Text("10",style: TextStyle(
                                color: selectedHour10==false?mainColor:Colors.white),)),

                              height: 30,width: 30,),onTap: (){
                            setState((){
                              selectedHour10= !selectedHour10;
                              bookingHour = "10" ;
                              print(selectedHour10);
                              print(bookingHour);


                            });
                          },),
                        ],
                      ),
                      CustomHeightSizedBox(percentage: .02),

                      Row(children: [
                        CustomText(
                            text: "Min",
                            size: 20,
                            color: greyColor,
                            weight: FontWeight.bold),

                      ],mainAxisAlignment: MainAxisAlignment.center,),

                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [SfRangeSlider(
                        min: 0.0,
                        max: 60.0,
                        values: sliderValue,
                        interval: 15,
                        showTicks: false,
                        stepSize: 15,
                        activeColor: mainColor,
                        endThumbIcon: Container(
                            height: 60,
                            width: 100,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: mainColor, width: 2))),
                        startThumbIcon: Container(
                            height: 60,
                            width: 100,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: mainColor, width: 2))),
                        showLabels: true,
                        inactiveColor: mainColor,
                        showDivisors: true,
                        minorTicksPerInterval: 0,
                        onChanged: (SfRangeValues values) {
                          setState(() {
                            sliderValue = values;
                            print(sliderValue.end);
                            print(sliderValue.start.round());

                            minutes = sliderValue.end.round().toString();
                          });
                        },
                      ),],)
                    ],
                  )),
              actions: <Widget>[
                TextButton(
                  child: Text('Okay',style: TextStyle(color: mainColor),),
                  onPressed: (){
                      Navigator.of(context).pop();
                  },
                ),
              ],
            );
          });
    });
  }
}
