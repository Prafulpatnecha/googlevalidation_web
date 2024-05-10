import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:googlevalidation_web/home/loginhome/components/funtion/funtionfile.dart';
import 'package:googlevalidation_web/utils/colors.dart';
import 'package:googlevalidation_web/utils/globle.dart';
// import 'package:googlevalidation_web/utils/globle.dart';
// import 'package:googlevalidation_web/utils/image.dart';

import 'container.dart';


GlobalKey<FormState> formKey = GlobalKey();
TextEditingController txtEmail = TextEditingController();
class HomeLogin extends StatefulWidget {
  const HomeLogin({super.key});

  @override
  State<HomeLogin> createState() => _HomeLoginState();
}

class _HomeLoginState extends State<HomeLogin> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: beckcolor,
        child: Stack(
          children: [
            Center(
              child: Container(
                height: 300,
                width: 800,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    // SizedBox(width: 30,),
                    buildColumnGoogleSide(
                      textfind: 'Sign in',
                      textgmailfind: 'Use Your Google Account',
                      boolck: true,
                    ),
                    const Spacer(),
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          const Spacer(),
                          emailPassWork(
                              controllerfind: txtEmail,
                              textfind: 'Email or phone',
                              textforfind: 'Forgot email?'),
                          const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                    text:
                                        'Not your computer? Lise Guest mode to sign in privately.',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10.9,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: ' Learn more',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          buttonRow(
                              createtext: 'Create account',
                              textButtonfind: TextButton(
                                onPressed: () {
                                  setState(() {
                                    ck=0;
                                    ckgmail=0;
                                    ckgmaillast=0;
                                    funtion_check();
                                    bool response=formKey.currentState!.validate();
                                    if(response)
                                      {
                                        email=txtEmail.text;
                                        Navigator.of(context).pushNamed('/password');
                                      }
                                  });
                                },
                                child: textButtonNext(textfind: '  Next  '),
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
