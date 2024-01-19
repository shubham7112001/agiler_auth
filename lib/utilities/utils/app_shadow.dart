import 'package:flutter/material.dart';

class MyAppBoxShadow{
  static final appBarShadow = [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ];
  // static final containerShadow = [
  //         BoxShadow(
  //           color: Colors.black.withOpacity(0.05),
  //           spreadRadius: 2,
  //           blurRadius: 2,
  //           offset: const Offset(0, 2),
  //         ),
  //         BoxShadow(
  //           color: Colors.black.withOpacity(0.05),
  //           spreadRadius: 2,
  //           blurRadius: 2,
  //           offset: const Offset(2, 0),
  //         ),
  //         BoxShadow(
  //           color: Colors.black.withOpacity(0.05),
  //           spreadRadius: 2,
  //           blurRadius: 2,
  //           offset: const Offset(0, -2),
  //         ),
  //         BoxShadow(
  //           color: Colors.black.withOpacity(0.05),
  //           spreadRadius: 2,
  //           blurRadius: 2,
  //           offset: const Offset(-2, 0),
  //         ),
  //       ];


  static final containerShadow = List.generate(
  4,
  (index) => BoxShadow(
    color: Colors.black.withOpacity(0.05),
    spreadRadius: 2,
    blurRadius: 2,
    offset: _getOffsetForIndex(index),
  ),
);

static Offset _getOffsetForIndex(int index) {
  switch (index) {
    case 0:
      return const Offset(0, 2); // Bottom
    case 1:
      return const Offset(2, 0); // Right
    case 2:
      return const Offset(0, 0); // Top (no vertical offset)
    case 3:
      return const Offset(0, 0); // Left (no horizontal offset)
    default:
      return Offset.zero;
  }
}

}