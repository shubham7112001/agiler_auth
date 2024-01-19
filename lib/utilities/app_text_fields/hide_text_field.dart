import 'package:flutter/material.dart';

hideTextField({
  required TextEditingController controller,
  Function(String text)? onChanged
  }) {
  return SizedBox(
    height:40,
    width:200,
    child: TextField(
      onChanged: onChanged,
      controller: controller,
      autofocus: true,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
      ),
      showCursor: false,
    ),
  );
}
