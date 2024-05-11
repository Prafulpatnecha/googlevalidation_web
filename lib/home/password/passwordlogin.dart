import 'package:flutter/material.dart';
import 'package:googlevalidation_web/utils/globle.dart';

import '../../utils/colors.dart';
import '../loginhome/components/container.dart';
import 'functionpassword.dart';
TextEditingController txtpassword=TextEditingController();
GlobalKey<FormState> Keyform=GlobalKey();
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
                      key: Keyform,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          const Text("To continue, first verify that it's you"),
                          const SizedBox(height: 20,),
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
                    (boolicon==true)?const Icon(Icons.check_box_outline_blank):const Icon(Icons.check_box,color: Colors.blue,),
                              ),

                              const Text('Show password',style: TextStyle(height: 2.9),),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          buttonRow(
                              createtext: 'Try another way',
                              textButtonfind: TextButton(
                                onPressed: () {
                                  setState(() {
                                    passckspace=0;
                                    passcknum=0;
                                    passck=0;
                                    passupperCk=0;
                                    passwordcheak();
                                    bool response=Keyform.currentState!.validate();
                                    if(response)
                                    {
                                      password=txtpassword.text;
                                      Navigator.of(context).pushNamed('/perfact');
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
    );
  }
}
