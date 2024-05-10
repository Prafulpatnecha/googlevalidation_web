import 'package:flutter/material.dart';
import 'package:googlevalidation_web/controller/routesfile.dart';

class LoginWeb extends StatelessWidget {
  const LoginWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Approutes.routes,
    );
  }
}
