import 'package:googlevalidation_web/home/loginhome/components/funtion/funtionfile.dart';
import 'package:googlevalidation_web/utils/globle.dart';

int passck=0;

void passwordcheak()
{
  passwordfuntionascii();
  spacefind(findtext: password);
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
}
int passck1=0;
void spacefind({required String findtext})
{
      for(int j=1;j<findtext.length;j++)
        {
            if(password[j]==result[0])
              {
                passck1=1;
              }
        }
}