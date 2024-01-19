import 'package:flutter/material.dart';
import 'package:node_js_authentication/utilities/app_colors/my_app_colors.dart';
import 'package:node_js_authentication/utilities/app_icons/app_icons.dart';
import 'package:node_js_authentication/utilities/app_text_styles/my_app_text_styles.dart';

myAppTextField({
  required TextEditingController controller,
   String? hintText,
   String? labelText,
   IconData? icon,
   double? iconSize,
   bool? isNumberType,
   double? height,
   double? width
}){
  return  SizedBox(
    height: height ?? 100,
    width: width ?? 400,
    child: TextField(
      keyboardType: (isNumberType == true) ? TextInputType.number :TextInputType.multiline,
      controller: controller,
      style: MyAppTextStyle.hintTextStyles,
      decoration: InputDecoration(
        labelText: labelText ?? '',
        labelStyle: MyAppTextStyle.hintTextStyles,
        hintText: hintText ?? '',
        hintStyle: MyAppTextStyle.hintTextStyles,
        prefixIcon: MyAppIcons.appIcon(icon: icon ?? Icons.email,size: iconSize),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color:MyAppColors.appMainColor, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color:MyAppColors.appMainColor, width: 1.0),
        ),
      ),
    ),
  );
}