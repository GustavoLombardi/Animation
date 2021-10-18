import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui/Animation/FadeAnimation.dart';
import 'package:ui/screens/home.dart';
import 'package:ui/screens/login.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
 ));
   runApp(
  
  MaterialApp(
  
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      routes: {
        '/home': (ctx) =>  HomePage(),
        
      },
    ));
}
// ignore: use_key_in_widget_constructors
