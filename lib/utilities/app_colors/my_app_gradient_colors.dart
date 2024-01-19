import 'package:flutter/material.dart';
import 'package:node_js_authentication/utilities/app_colors/my_app_colors.dart';

class MyAppGradientColor{
  static  LinearGradient linearGradient = LinearGradient(
          colors: [MyAppColors.appMainColor, MyAppColors.appMainColor.withOpacity(0.6)],  // Choose your gradient colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
  static  LinearGradient backgroundLinearGradient= LinearGradient(
          colors: [MyAppColors.appMainColor.withOpacity(0.4), MyAppColors.appMainColor.withOpacity(0.6)],  // Choose your gradient colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
}