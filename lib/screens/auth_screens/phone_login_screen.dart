import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:node_js_authentication/screens/auth_screens/otp_verification_screen.dart';
import 'package:node_js_authentication/utilities/app_assets/image_assets.dart';
import 'package:node_js_authentication/utilities/app_buttons/my_app_buttons.dart';
import 'package:node_js_authentication/utilities/app_containers/image_container.dart';
import 'package:node_js_authentication/utilities/app_text_fields/app_textfield.dart';

class PhoneLoginScreen extends StatelessWidget {
  final TextEditingController phoneController = TextEditingController();

   PhoneLoginScreen({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right:10.0,bottom: 10,left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              myImageContainer(
                height: screenSize.height * 0.6,
                width: screenSize.width * 0.8,
                imagePath: MyImageAssets.phoneLoginScreen),
                const SizedBox(height: 20,),
              myAppTextField(
                iconSize: screenSize.height * 0.066,
                height: screenSize.height * 0.1,
                width: screenSize.width * 0.85,
                icon: Icons.phone,
                controller: phoneController,
                hintText: "Enter 10 digit number",
                labelText: "Enter Number"
                ),
                const SizedBox(height: 20,),
              myAppButton(
                text: "Send OTP",
                fun: (){
                  log('Clicked');
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OTPVerificationScreen()));
                  log(' After Clicked');
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}
