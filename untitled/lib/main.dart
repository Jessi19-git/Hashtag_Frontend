

import 'package:flutter/material.dart';
import 'package:untitled/login.dart';
import 'package:untitled/signup.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login':(context)=> MyLogin(),
      'signup':(context)=> SignUp()
    },
  ));
}





