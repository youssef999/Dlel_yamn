
import 'package:flutter/material.dart';
import 'package:freelancerApp/core/resources/colors.dart';


abstract class Styles {

  static dynamic primaryTextStyle = TextStyle(
     fontSize: 16,
     color:kTextPrimaryColor,
    fontWeight: FontWeight.w600,
  );

  static dynamic primaryTextStyleBold = TextStyle(
     fontSize: 16,
     color:kTextPrimaryColor,
    fontWeight: FontWeight.w700,
  );

   static dynamic primaryTextStyleLarge = TextStyle(
     fontSize: 32,
     color:kTextPrimaryColor,
    fontWeight: FontWeight.bold

  );

   static dynamic primaryTextStyleSmall = TextStyle(
     fontSize: 12,
     color:kTextPrimaryColor,
    fontWeight: FontWeight.w600,
  );

  static dynamic lightTextStyle = TextStyle(
     fontSize: 16,
     color:kTextHelperLightColor,
    fontWeight: FontWeight.w600,
  );

   static dynamic lightTextStyleBold = TextStyle(
     fontSize: 16,
     color:kTextHelperLightColor,
    fontWeight: FontWeight.w700,
  );

   static dynamic appBarTextStyle = TextStyle(
     fontSize: 24,
     color:kTextHelperLightColor,
    fontWeight: FontWeight.w700,
  );

  static dynamic darkTextStyle = TextStyle(
     fontSize: 18,
     color:kTextHelperDarkColor,
    fontWeight: FontWeight.w800,
  );

  static dynamic darkTextStyleBold = TextStyle(
     fontSize: 16,
     color:kTextHelperDarkColor,
    fontWeight: FontWeight.w700,
  );

}

const TextStyle textStyle = TextStyle();
