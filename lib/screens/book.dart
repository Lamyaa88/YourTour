//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:syncfusion_flutter_sliders/sliders.dart';
//import 'package:yourtour/constants/colors.dart';
//
//
//class Date2 extends StatefulWidget {
//  @override
//  _Date2State createState() => _Date2State();
//}
//
//class _Date2State extends State<Date2> {
//  SfRangeValues _values = SfRangeValues(0.0, 60.0);
//  String minutes = "";
//  DateTime selectedDate = DateTime.now();
//
//
//
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body:Center(child:  Column(
//        mainAxisSize: MainAxisSize.min,
//        children: <Widget>[
//
//          Text("${selectedDate.toLocal()}".split(' ')[0]),
//          SizedBox(height: 20.0,),
//          RaisedButton(
//            onPressed: () => _selectDate(context),
//            child: Text('Select date'),
//
//
//          ),
//          rangeSlider()
//
//        ],
//      ),
//
//
//      ),
//    );
//  }
//  Widget rangeSlider(){
//
//    return Row(mainAxisAlignment: MainAxisAlignment.center,
//      children: [
//        Container(width: 300,
//          child: Center(
//            child: SfRangeSlider(
//              min: 0.0,
//              max: 60.0,
//              values: _values,
//              interval: 15,
//              showTicks: false,stepSize: 15,activeColor: mainColor,endThumbIcon:Container(
//                height: 30,width:
//            30,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,border:
//            Border.all(color: mainColor,width: 2))),startThumbIcon: Container(
//                height: 30,width:
//            30,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,border:
//            Border.all(color: mainColor,width: 2))),
//              showLabels: true,inactiveColor: mainColor,showDivisors: true,
//              minorTicksPerInterval: 0,
//              onChanged: (SfRangeValues values){
//                setState(() {
//                  _values = values;
//                  print(_values.end.round());
//                  minutes = _values.end.round().toString();
//                });
//              },
//            ),
//          ),
//        ),
//      ],
//    );
//
//  }
//  Future<void> _selectDate(BuildContext context) async {
//    final DateTime picked = await showDatePicker(
//        context: context,
//        initialDate: selectedDate,
//        firstDate: DateTime(2015, 8),fieldHintText: "sssssssss",errorFormatText: "eeeeeeeee",
//        lastDate: DateTime(2101));
//    if (picked != null && picked != selectedDate)
//      setState(() {
//        selectedDate = picked;
//      });
//  }
//
//}
