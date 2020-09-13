import 'package:com/pages/login/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool isLogin = false;
bool infoGet2 = false;
bool infoGet1 = false;
bool tokenGet = false;
void saveData() async{
  if(code == 1)
    {
      isLogin = false;
    }
  else if(code == 0){
    isLogin = true;
    infoGet2 = true;
    infoGet1 = true;
    tokenGet = true;
    print("saveData成功");
  }
  var prefs = await SharedPreferences.getInstance();
  prefs.setBool('isLogin',isLogin);
  prefs.setBool('infoGet1', infoGet1);
  prefs.setBool('infoGet2', infoGet2);
  prefs.setBool('token', tokenGet);
}



void getData() async{
  var prefs = await SharedPreferences.getInstance();
  isLogin = prefs.getBool('isLogin');
}

void infoGet1Change()async
{
  var prefs = await SharedPreferences.getInstance();
  infoGet1 = true;
  prefs.setBool('infoGet1', infoGet1);
}
void infoGet2Change()async
{
  var prefs = await SharedPreferences.getInstance();
  infoGet2 = true;
  prefs.setBool('infoGet2', infoGet2);
}
void infoGet1Confirm()async
{
  var prefs = await SharedPreferences.getInstance();
  infoGet1 = prefs.getBool('infoGet1');
}
void infoGet2Confirm()async
{
  var prefs = await SharedPreferences.getInstance();
  infoGet2 = prefs.getBool('infoGet2');
}

void setJoinerData()async
{
  var prefs = await SharedPreferences.getInstance();
}