// import 'dart:js';

import 'package:flutter/material.dart';

import '../home/loginhome/components/loginpage.dart';
import '../home/password/passwordlogin.dart';
import '../home/successfullyfile/successfully.dart';
class Approutes
{
  static Map<String, Widget Function(BuildContext)> routes={
    '/':(context)=>const HomeLogin(),
    '/password':(context)=>const HomeLoginPassword(),
    '/perfact':(context)=>const SuccessFully()
  };
}