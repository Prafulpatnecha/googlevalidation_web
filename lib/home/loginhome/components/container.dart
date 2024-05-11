import 'package:flutter/material.dart';
// import 'package:googlevalidation_web/home/password/functionpassword.dart';
import 'package:googlevalidation_web/utils/globle.dart';

import '../../../utils/image.dart';
import 'funtion/funtionfile.dart';

Column buildColumnGoogleSide(
    {required String textfind,
    required String textgmailfind,
    required bool boolck}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 30,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        // alignment: Alignment.topLeft,
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: googlebeck,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Text(
          textfind,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: (boolck == true)
            ? Text(
                textgmailfind,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              )
            : Container(
          width: 300,
          // height: 25,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black,width: 0.5),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                color: Colors.black54,
                  shape: BoxShape.circle,
              ),
                child: Center(child: Text(email[0].toUpperCase(),style: const TextStyle(color: Colors.white),),),
              ),
              const SizedBox(width: 5,),
              Text(
                textgmailfind,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              const Spacer(),
              const Icon(Icons.arrow_drop_down_outlined),
              const SizedBox(width: 10,),
            ],
          ),
        ),
      )
    ],
  );
}

// const asciiEncoder = AsciiEncoder();
// final asciiValues = asciiEncoder.convert(' ');
SizedBox emailPassWork({required TextEditingController controllerfind,String? textfind,String? textforfind}) {
  return SizedBox(
    width: 370,
    height: 100,
    child: TextFormField(
      validator: (value) {
        if(value!.isEmpty)
          {
            return 'Field must be required!';
          }
        else if(value.length<9 || value.length>=32)
          {
            return 'Field must be required Minimum 9 & Maximum 32!';
          }
        else if(ck==1)
          {
            return 'Do required Special Characters!';
          }
        else if(ckgmaillast==0)
          {
            return 'Field must be required @gmail.com!';
          }else if(passckspace==1)
        {
          return 'Field must be required Space Does Not Allow';
        }
        return null;
      },
      onChanged: (value) {
        email=value;
        colorbool=false;
      },
      obscureText: false,
      controller: controllerfind,
      decoration: InputDecoration(
        labelStyle: const TextStyle(color: Colors.black),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red)
        ),
        border: const OutlineInputBorder(),
        hoverColor: Colors.black,
        label: const Text('Email or Phone'),
        // labelText: 'Email or Phone',
        hintText: textfind,//<----------{hint}
        hintStyle: const TextStyle(
          color: Colors.black,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        helperText: textforfind,
        helperStyle: const TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Row buttonRow({required TextButton textButtonfind, required var createtext}) {
  return Row(
    children: [
      // Spacer(),
      const SizedBox(
        width: 200,
      ),
      Text(
        createtext,
        style: const TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      Container(
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(20)),
          child: textButtonfind),
    ],
  );
}

// '  Next  '
Text textButtonNext({required String textfind}) {
  return Text(
    textfind,
    style: const TextStyle(color: Colors.white, fontSize: 12),
  );
}



SizedBox passWork({required TextEditingController controllerfind,String? textfind,String? textforfind}) {
  return SizedBox(
    width: 370,
    // height: 80,
    child: TextFormField(
      validator: (value)
      {
        if(value!.isEmpty)
        {
          return 'Field must be required!';
        }
        else if(value.length<8 || value.length>=32)
        {
          return 'Field must be required Minimum 8 & Maximum 32!';
        }
        else if(passcknum==0)
          {
            return 'Field must be required Any One Number Is Important';
          }
        else if(passck==0)
          {
            return 'Field must be required one Spacial Character';
          }
        else if(passckspace==1)
          {
            return 'Field must be required Space Does Not Allow';
          }else if(passupperCk==0)
            {
              return 'Field must be required Upper Letter';
            }
        return null;
      },
      onChanged: (value) {
        password=value;
      },
      obscureText: boolicon,
      controller: controllerfind,
      decoration: InputDecoration(
        errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red)
        ),
        border: const OutlineInputBorder(),
        hoverColor: Colors.black,
        label: Text(textfind.toString()),
        labelStyle: const TextStyle(color: Colors.black),
        hintText: textfind,//<----------{hint}
        hintStyle: const TextStyle(
          color: Colors.black,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        helperText: textforfind,
        helperStyle: const TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}