import 'package:flutter/material.dart';
import 'package:node_js_authentication/providers/auth_screen_providers/email_login_provider.dart';
import 'package:node_js_authentication/providers/auth_screen_providers/otp_verification_provider.dart';
import 'package:node_js_authentication/screens/auth_screens/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<EmailLoginProvider>(create: (context)=> EmailLoginProvider()),
        ChangeNotifierProvider<OtpVerificationProvider>(create: (context)=> OtpVerificationProvider()),
        ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
      
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LoginScreen()
      ),
    );
  }
}
