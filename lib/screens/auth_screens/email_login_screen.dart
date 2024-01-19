import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:node_js_authentication/utilities/app_bars/my_app_bars.dart';
import 'package:node_js_authentication/utilities/app_buttons/my_app_buttons.dart';
import 'package:node_js_authentication/utilities/app_strings/my_app_strings.dart';
import 'package:node_js_authentication/utilities/app_text_fields/app_textfield.dart';
import 'package:node_js_authentication/utilities/app_text_styles/my_app_text_styles.dart';
import 'package:node_js_authentication/screens/auth_screens/email_verification_screen.dart';
import 'package:node_js_authentication/providers/auth_screen_providers/email_login_provider.dart';

class EmailLoginScreen extends StatelessWidget {

  const EmailLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Consumer<EmailLoginProvider>(
      builder: (context,provider,child) {
        return Scaffold(
          appBar:const MyAppBar(),
          body: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: Text(MyAppString.welcomeBack,style: MyAppTextStyle.richTextStyles,)),
                   SizedBox(height:screenSize.height * 0.1,),
                  const Text(MyAppString.pleaseLoginToContinue,style:MyAppTextStyle.hintTextStyles),
                  const SizedBox(height: 10,),
                  myAppTextField(
                    height: screenSize.height * 0.1,
                    controller: provider.emailController,
                    icon: Icons.email,
                    labelText: MyAppString.loginEmailFieldText,
                    ),
                  const SizedBox(height: 20,),
                  myAppTextField(
                    height: screenSize.height * 0.1,
                    controller: provider.passwordController,
                    icon: Icons.password_sharp,
                    labelText: MyAppString.loginPasswordFieldText,
                    ),
                  const SizedBox(height: 40,),
                  myAppButton(
                    text :MyAppString.loginButtonText,
                    fun: (){
                      Navigator.push(context, MaterialPageRoute(builder: 
                      (context) => const EmailVerificationScreen()));
                    }
                  )
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
