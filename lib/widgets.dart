import 'package:flutter/material.dart';
import 'constants/colors.dart';
//========================================================================================================= (1) textField

class CustomTextField extends StatelessWidget {
  final String hint;
  final bool  secure ;
  final TextInputType inputType ;
  String  _errorMessage(String str) {
    switch (hint) {
      case 'Enter your name':
        return 'Name is empty !';
      case 'Enter your email':
        return 'Email is empty !';
      case 'Enter your password':
        return 'Password is empty !';
    }
  }

  CustomTextField(
      {@required this.secure, @required this.hint ,@required this.inputType});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(keyboardType: inputType,
        style: TextStyle(color:mainColor),
        obscureText: secure,
        cursorColor: mainColor,

        decoration: InputDecoration(

          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16),
           borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color:Colors.white)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: mainColor)),
        ),
      ),
    );
  }
}
//========================================================================================================= (2) heightSizedBox

class CustomHeightSizedBox extends StatelessWidget {

  final double percentage;
  bool  secure ;



  CustomHeightSizedBox(
      {@required this.percentage});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width ;

    return SizedBox(
      height:height*percentage ,
    );
  }
}
//========================================================================================================= (3) widthSizedBox

class CustomWidthSizedBox extends StatelessWidget {

  final double percentage;
  bool  secure ;



  CustomWidthSizedBox(
      {@required this.percentage});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width ;

    return SizedBox(
      width:height*percentage ,
    );
  }
}
//========================================================================================================= (4) button

class CustomButton extends StatelessWidget {

  final double givenHeight ;
  final double givenWidth ;
  final double radius ;
  final Color buttonColor ;
  final String text ;
  final Color textColor ;
  final double  fontSize;
  final Function onTapFunction ;
  final FontWeight fontWieght;


  bool  secure ;
  CustomButton(
      {@required this.givenHeight,@required this.givenWidth,@required this.buttonColor,@required this.text,
        @required this.fontSize,@required this.textColor,@required this.onTapFunction, @required this.radius, this.fontWieght:FontWeight.normal});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width ;

    return  Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          borderRadius:   BorderRadius.all(Radius.circular(height*.03)),splashColor: Colors.white,
          onTap: onTapFunction,
          child: Container(
            height:givenHeight,width: givenWidth,child: Center(child: Text(text
            ,style: TextStyle(color: textColor,fontWeight: fontWieght ,fontSize: fontSize),)),decoration:
          BoxDecoration(color: mainColor,borderRadius: BorderRadius.circular(radius)),
          ),
        ),
      ],
    );
  }
}
//========================================================================================================= (5) image

class CustomImage extends StatelessWidget {

  final double givenHeight;
  final double givenWidth;
  final String path;

  CustomImage(
      { @required this.path,@required this.givenHeight,@required this.givenWidth});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width ;

    return Container(
      child: Image.asset(path ,height: givenHeight,width: givenWidth,fit: BoxFit.cover,),
    );
  }
}
//========================================================================================================= (6) text

class CustomText extends StatelessWidget {

  final String text;
  final double size;
  final Color color ;
  final FontWeight weight ;




  CustomText(
      {@required this.text,@required this.size, @required this.color,@required this.weight});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width ;

    return Text(text,style: TextStyle(
        fontSize: size,color: color,fontWeight: weight),textDirection: TextDirection.ltr
      ,textAlign:TextAlign.start,);
  }
}
//========================================================================================================= (7) InkWell

class CustomInkWell extends StatelessWidget {

  final String text;
  final double size;
  final Color color ;
  final FontWeight weight ;
  final Function onTap ;



  CustomInkWell(
      {@required this.text,@required this.size, @required this.color,@required this.weight, @required this.onTap});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width ;

    return InkWell(child: Text(text,style: TextStyle(fontSize: size,color: color,fontWeight: weight),),onTap: onTap ,);
  }
}



