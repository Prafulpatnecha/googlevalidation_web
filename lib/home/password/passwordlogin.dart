import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:googlevalidation_web/utils/globle.dart';

import '../../utils/colors.dart';
import '../loginhome/components/container.dart';
import '../loginhome/components/funtion/funtionfile.dart';
import 'functionpassword.dart';
GlobalKey<FormState> formKey=GlobalKey();
TextEditingController txtpassword=TextEditingController();
class HomeLoginPassword extends StatefulWidget {
  const HomeLoginPassword({super.key});

  @override
  State<HomeLoginPassword> createState() => _HomeLoginPasswordState();
}
class _HomeLoginPasswordState extends State<HomeLoginPassword> {
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
                      textfind: 'Email Password',
                      textgmailfind: email.toString(),
                      boolck: false,
                    ),
                    const Spacer(),
                    Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Text("To continue, first verify that it's you"),
                          SizedBox(height: 20,),
                          passWork(
                              controllerfind: txtpassword,
                              textfind: 'Enter Your Password',),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(onPressed: () {
                                setState(() {
                                    if (boolicon == true) {
                                      boolicon = false;
                                    } else {
                                      boolicon = true;
                                    }
                                });
                                }, icon:
                    (boolicon==true)?const Icon(Icons.check_box_outline_blank):const Icon(Icons.check_box_outlined),
                              ),

                              Text('Show password',style: TextStyle(height: 2.9),),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          // const Text.rich(
                          //   TextSpan(
                          //     children: [
                          //       TextSpan(
                          //           text:
                          //           'Not your computer? Lise Guest mode to sign in privately.',
                          //           style: TextStyle(
                          //               color: Colors.black,
                          //               fontSize: 10.9,
                          //               fontWeight: FontWeight.bold)),
                          //       TextSpan(
                          //           text: ' Learn more',
                          //           style: TextStyle(
                          //               color: Colors.blue,
                          //               fontSize: 11,
                          //               fontWeight: FontWeight.bold)),
                          //     ],
                          //   ),
                          // ),
                          const SizedBox(
                            height: 25,
                          ),
                          buttonRow(
                              createtext: 'Try another way',
                              textButtonfind: TextButton(
                                onPressed: () {
                                  setState(() {
                                    // ck=0;
                                    // ckgmail=0;
                                    // ckgmaillast=0;
                                    // funtion_check();
                                    passck=0;
                                    passwordcheak();
                                    bool response=formKey.currentState!.validate();
                                    if(response)
                                    {
                                      password=txtpassword.text;
                                      Navigator.of(context).pushNamed('/password');
                                    }
                                  });
                                },
                                child: textButtonNext(textfind: '  Next  '),
                              ),),
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
    );;
  }
}
