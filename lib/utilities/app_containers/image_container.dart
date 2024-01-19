import 'package:flutter/material.dart';

myImageContainer({
  required String imagePath,
  double? height,
  double? width,
  Color? color,
  Widget? child
}){
  return Container(
    height: height ?? 200,
    width: width ?? 500,
    decoration: BoxDecoration(
      color: color ?? Colors.transparent,
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(imagePath)
      )
    ),
    child: child,
  );
}