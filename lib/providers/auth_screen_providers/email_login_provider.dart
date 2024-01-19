import 'package:flutter/material.dart';

class EmailLoginProvider extends ChangeNotifier{
  final TextEditingController _emailController =  TextEditingController();
  final TextEditingController _passwordController =  TextEditingController();

  get emailController  => _emailController;
  get passwordController  => _passwordController;

  

}