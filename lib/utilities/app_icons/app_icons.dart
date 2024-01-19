import 'package:flutter/material.dart';
import 'package:node_js_authentication/utilities/app_colors/my_app_colors.dart';

class MyAppIcons{
  static appIcon({
    IconData? icon,
    double? size
  }){
    return Icon(
      icon ?? Icons.abc,
      size: size ?? 24,
      color:  MyAppColors.appMainColor,
    );
  }
}