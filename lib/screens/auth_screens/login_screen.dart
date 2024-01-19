import 'package:flutter/material.dart';
import 'package:node_js_authentication/screens/auth_screens/email_login_screen.dart';
import 'package:node_js_authentication/screens/auth_screens/phone_login_screen.dart';
import 'package:node_js_authentication/utilities/app_assets/image_assets.dart';
import 'package:node_js_authentication/utilities/app_buttons/my_app_buttons.dart';
import 'package:node_js_authentication/utilities/app_containers/image_container.dart';
import 'package:node_js_authentication/utilities/app_strings/my_app_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              myImageContainer(
                height: screenSize.height * 0.7,
                width: screenSize.width,
                imagePath: MyImageAssets.sampleImagePath),
                const SizedBox(height: 5,),
                
             myAppButton(text:MyAppString.loginWithEmail,
             margin: 5,
             width: screenSize.width,
             height: screenSize.height * 0.1,
             fun: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: ((context) => const EmailLoginScreen())));
             }
             ),
             myAppButton(
              margin: 5,
             width: screenSize.width,
             height: screenSize.height * 0.1,
              text: MyAppString.loginWithMobile,
             fun: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: ((context) => PhoneLoginScreen())));
             }),
            ],
          ),
        ),
      ),
    );
  }
}
