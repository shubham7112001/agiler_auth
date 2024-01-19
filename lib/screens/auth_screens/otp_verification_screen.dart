import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:node_js_authentication/providers/auth_screen_providers/otp_verification_provider.dart';
import 'package:node_js_authentication/utilities/app_assets/image_assets.dart';
import 'package:node_js_authentication/utilities/app_buttons/my_app_buttons.dart';
import 'package:node_js_authentication/utilities/app_containers/image_container.dart';
import 'package:node_js_authentication/utilities/app_containers/otp_container.dart';
import 'package:node_js_authentication/utilities/app_text_fields/hide_text_field.dart';
import 'package:provider/provider.dart';

class OTPVerificationScreen extends StatelessWidget {

  const OTPVerificationScreen({super.key});

 

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Consumer<OtpVerificationProvider>(
          builder: (context,provider,child) {
            
            return Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    myImageContainer(
                      imagePath: MyImageAssets.phoneOtpScreen,
                      height: screenSize.height * 0.6
                      ),
                    const SizedBox(height: 10,),
                     hideTextField(
                      onChanged: ((text) {
                        provider.onChanged(text);
                      }),
                      controller: provider.otpController
                    ),
                   Center(
                     child: SizedBox(
                      width: screenSize.width * 0.6,
                     
                       child:  InkWell(
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap : (){
                          // log("CLicked");
                          // FocusScope.of(context).requestFocus(FocusNode());
                          Navigator.pop(context);
                        },
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            myOtpContainer(
                              context:context,
                              text:provider.otp1
                              ),
                            myOtpContainer(
                              context:context,
                              text:provider.otp2
                              ),
                            myOtpContainer(
                              context:context,
                              text:provider.otp3
                              ),
                            myOtpContainer(
                              context:context,
                              text:provider.otp4
                              ),
                          ],
                         ),
                       ),
                     ),
                   ),
                    const SizedBox(height: 16.0),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: myAppButton(
                        height: screenSize.height * 0.1,
                      text: "Verify",
                      fun: (){
                        log("Verify Clicked");
                        provider.clickOnVerify();
                      }
                    ),
                      )
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
