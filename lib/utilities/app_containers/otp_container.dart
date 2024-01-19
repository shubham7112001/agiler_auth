 import 'package:flutter/material.dart';
import 'package:node_js_authentication/utilities/app_colors/my_app_colors.dart';

myOtpContainer({
  required BuildContext context,
  String? text
  }){

    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height:screenSize.width * 0.125,
      width:screenSize.width * 0.125,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        border: Border.all(width: 1.0,color: MyAppColors.appMainColor)
      ),
      child:  Center(child: Text(text ?? "",style: TextStyle(fontSize: screenSize.width * 0.08),)),
    );
  }