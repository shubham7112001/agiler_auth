import 'package:flutter/material.dart';
import 'package:node_js_authentication/utilities/app_colors/my_app_colors.dart';
import 'package:node_js_authentication/utilities/app_text_styles/my_app_text_styles.dart';

myAppButton({
  Function()? fun,
   String? text,
   Color? color,
   double? height,
   double? width,
   double? margin,
   TextStyle? textStyle
}){
  return InkWell(
    onTap: fun ?? (){},
    child: Container(
      height:height?? 40,
      width: width??200,
      margin:  EdgeInsets.all(margin ?? 0.0),
      decoration: BoxDecoration(
        borderRadius:  BorderRadius.all(Radius.circular(height!=null ? height/2 : 20)),
        color: color ?? MyAppColors.appMainColor
      ),
      child: Center(child: Text(text ?? "Click Me",style:textStyle ?? MyAppTextStyle.buttonTextStyles,)),
    ),
  );
}