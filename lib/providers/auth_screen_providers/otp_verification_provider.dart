import 'dart:developer';

import 'package:flutter/material.dart';
class OtpVerificationProvider extends ChangeNotifier{
    final TextEditingController _otpController = TextEditingController();
    String _otp1 = "";
    String _otp2 = "";
    String _otp3 = "";
    String _otp4 = "";

    get otpController => _otpController;
    get otp1 => _otp1;
    get otp2 => _otp2;
    get otp3 => _otp3;
    get otp4 => _otp4;

    emptyAllOtpContainer(){
       _otp1 = "";
        _otp2 = "";
        _otp3 = "";
        _otp4 = "";
        _otpController.text = "";
        notifyListeners();
    }

    onChanged(String text){
      log(text);
     
      if(text.length == 1){
         _otp1 = text[0];
        _otp2 = "";
        _otp3 ="";
        _otp4 = "";
         }
      else if(text.length == 2) {
       _otp1 = text[0];
        _otp2 = text[1];
        _otp3 = "";
        _otp4 ="";
      }
      else if(text.length == 3) {
       _otp1 = text[0];
        _otp2 = text[1];
        _otp3 = text[2];
        _otp4 = "";
      }
      else if(text.length == 4){
        _otp1 = text[0];
        _otp2 = text[1];
        _otp3 = text[2];
        _otp4 = text[3];
      }
      else {
       emptyAllOtpContainer();
      }
      notifyListeners();

    }

    clickOnVerify(){
      String text = _otpController.text.trim();
      // Implement Logic Of Verify OTP
      emptyAllOtpContainer();
      notifyListeners();
    }


}