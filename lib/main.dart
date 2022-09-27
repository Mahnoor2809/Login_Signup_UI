import 'package:flutter/material.dart';
import 'package:flutter_project1/login.dart';
import 'package:flutter_project1/signup.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {'login': (context)=> MyLogin(),
      'signup':(context)=> Mysignup(),
    },

  ));
}

