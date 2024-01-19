import 'package:flutter/material.dart';
import 'package:node_js_authentication/utilities/app_colors/my_app_gradient_colors.dart';
import 'package:node_js_authentication/utilities/app_strings/my_app_strings.dart';
import 'package:node_js_authentication/utilities/app_text_styles/my_app_text_styles.dart';
import 'package:node_js_authentication/utilities/utils/app_shadow.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  const MyAppBar({super.key,  this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        gradient: MyAppGradientColor.linearGradient,
        boxShadow: MyAppBoxShadow.appBarShadow ,
      ),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(
          child: Text(
            title??MyAppString.appTitle,
            style:MyAppTextStyle.appBarTextStyles
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight+5);
}
