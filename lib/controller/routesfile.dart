import 'package:flutter/material.dart';

import '../home/loginhome/components/loginpage.dart';
import '../home/password/passwordlogin.dart';
class Approutes
{
  static Map<String, Widget Function(BuildContext)> routes={
    '/':(context)=>const HomeLogin(),
    '/password':(context)=>const HomeLoginPassword(),
  };
}