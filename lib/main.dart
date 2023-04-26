

import 'package:flutter/material.dart';
import 'package:untitled1/login.dart';
import 'package:untitled1/signup.dart';
import 'package:untitled1/home.dart';
import 'package:untitled1/Create.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login':(context)=> MyLogin(),
      'signup':(context)=> SignUp(),
      'home':(context)=> HomePage(),
      'Create':(context)=> Create()
    },
  ));
}







