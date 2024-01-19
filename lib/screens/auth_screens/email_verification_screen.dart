import 'package:flutter/material.dart';
import 'package:node_js_authentication/utilities/app_assets/gif_assets.dart';
import 'package:node_js_authentication/utilities/app_assets/image_assets.dart';
import 'package:node_js_authentication/utilities/app_buttons/my_app_buttons.dart';
import 'package:node_js_authentication/utilities/app_colors/my_app_colors.dart';
import 'package:node_js_authentication/utilities/app_containers/image_container.dart';
import 'package:node_js_authentication/utilities/utils/app_shadow.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body:  Center(
        child: Container(
          height: screenSize.height * 0.7,
          width: screenSize.width * 0.8,
          decoration:   BoxDecoration(
            borderRadius:  const BorderRadius.all(Radius.circular(10)),
            boxShadow: MyAppBoxShadow.containerShadow,
            color: Colors.white
    
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child:myImageContainer(
                  color:Colors.transparent,
              height: screenSize.height * 0.4,
              width: screenSize.width * 0.7,
              imagePath: MyImageAssets.emailVerification,
              child: Center(
            child: myImageContainer(
              height: screenSize.height,
              width: screenSize.width,
              imagePath: GifAssets.emailVerification),
          )),
              
              ),
              Expanded(
                flex: 1,
                child:  myAppButton(
                  fun: (){
                    Navigator.pop(context);
                  },
                  margin: 10,
                  height: screenSize.height * 0.1,
                  width: screenSize.width * 0.8,
                  color:MyAppColors.appMainColor.withOpacity(0.15),
                  text:"Confirm Email",
                  textStyle: TextStyle(
                    fontSize: screenSize.height * 0.05,
                    color: MyAppColors.appMainColor,
                    fontWeight: FontWeight.bold
                  )
                  
              )
              )
             
            
            ],
          ),
        ),
      ),
    );
  }
}
