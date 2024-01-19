import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:node_js_authentication/utilities/app_assets/svg_assets.dart';

mySvgContainer({
  required String imagePath,
  double? height,
  double? width
}){
  return Container(
    height: height ??200,
    width: width ?? 200,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(5)),
     
    ),
    child: SvgPicture.asset(SvgAssets.emailVerificationScreen,
    ),
  );
}