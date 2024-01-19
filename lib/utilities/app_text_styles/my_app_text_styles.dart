import 'package:flutter/material.dart';
import 'package:node_js_authentication/utilities/app_colors/my_app_colors.dart';

class MyAppTextStyle{
  
  // static buttonTextStyles({
  //   double? fontSize,
  //   Color? color
  // }){

  // }
  static const  buttonTextStyles = TextStyle(
    fontSize: 16,
    color: Colors.white
  );
  static const  richTextStyles = TextStyle(
    fontSize: 24,
    color: Colors.black,
    fontWeight: FontWeight.bold
  );

  static const appBarTextStyles = TextStyle(
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.bold
  );

  static const hintTextStyles = TextStyle(
  fontSize: 14,
    color: MyAppColors.appMainColor,
    fontWeight: FontWeight.bold
  );

  
}