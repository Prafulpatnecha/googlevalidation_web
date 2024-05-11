import 'dart:convert';

import 'package:googlevalidation_web/home/password/functionpassword.dart';

import '../../../../utils/globle.dart';
int ck=0;

const asciiDecoder = AsciiDecoder();
List<int> asciiValues = [];
var result='';
// final result = asciiDecoder.convert(asciiValues);
void funtionAscii()
{
  // print(result);
  for(int i=32;i<=47;i++)
  {
    asciiValues.add(i);
  }
  for(int i=58;i<=64;i++)
  {
    asciiValues.add(i);
  }
  for(int i=91;i<=96;i++)
  {
    asciiValues.add(i);
  }
  for(int i=123;i<=126;i++)
  {
    asciiValues.add(i);
  }
  // for(int i=0;i<result.length;i++)
  // {
  //   add(result[i]);
  // }
  result = asciiDecoder.convert(asciiValues);
}
  // for(int i=0;i<=asciiValues.length;i++)
  // {
  //   print(asciiValues[i]);
  // }

void funtioncheck()
{
  funtionAscii();
  gmailckk();
  gmaillast();
  spacefind(findtext: email);
}

void gmailckk()//10<================================
{
  for(int i=0; i<email.length-10;i++)
    {
      for(int j=1;j<asciiValues.length;j++)
        {
          if(email[i]==result[j])
            {
              ck=1;
            }
        }
    }
}
int ckgmaillast=0;
int ckgmail=0;
String gmailmain='@gmail.com';
void gmaillast()// less 10<=========================
{
  int j=0;
  // print('${email.length - 10}');
  for(int i=email.length-10;i<email.length;i++)
    {
      if(gmailmain[j]==email[i])
        {
          ckgmail++;
        }
      j++;
    }
  if(ckgmail==10)
    {
      ckgmaillast=1;
      // print('object');
    }
}
