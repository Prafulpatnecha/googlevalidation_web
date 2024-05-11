// import 'dart:convert';

import 'package:googlevalidation_web/home/loginhome/components/funtion/funtionfile.dart';
import 'package:googlevalidation_web/utils/globle.dart';


void passwordcheak()
{
  // asciiCode();
  funtionAscii();
  passwordfuntionascii();
  spacefind(findtext: password);
  numbercheck();
  uppercase();
}

void passwordfuntionascii()
{
      for(int j=1;j<password.length;j++)
        {
        for(int i=1;i<asciiValues.length;i++)
          {
            if(password[j]==result[i])
              {
                passck=1;
              }
          }
        }
      for(int i=65; i<90;i++)
        {
          upperValue.add(i);
        }
      upperchar=asciiDecoder.convert(upperValue);
}
void spacefind({required String findtext})
{
      for(int j=0;j<findtext.length;j++)
        {
            if(findtext[j]==result[0])
              {
                passckspace=1;
              }
        }
}

// void asciiCode()
// {
//   for(int i=0;i<9;i++)
//     {
//       asciiValue1.add(i);
//     }
//   result1=asciiDecoder1.convert(asciiValue1);
// }

void numbercheck()
{
  for(int i=0; i<password.length;i++)
    {
      for(int j=0; j<9;j++)
        {
          if(password[i]==j.toString())
            {
              passcknum=1;
            }
          else{
            passwordchar.add(password[i]);
          }
        }
    }
}

void uppercase()
{
  for(int i=0; i<password.length;i++)
    {
      for(int j=0;j<upperchar.length;j++)
        {
          if(upperchar[j]==password[i])
            {
              passupperCk=1;
              // print('object');
            }
        }
    }
}