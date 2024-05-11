import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class SuccessFully extends StatefulWidget {
  const SuccessFully({super.key});

  @override
  State<SuccessFully> createState() => _SuccessFullyState();
}

class _SuccessFullyState extends State<SuccessFully> {
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
                child: const Center(child: Expanded(child: Text('Successfully Your Google Login Now Continue',style: TextStyle(color: Colors.black,fontSize: 30),))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
