import 'dart:convert';
import 'package:com/main.dart';
import 'package:com/pages/login/administrator/administratorData.dart';
import 'package:com/pages/login/administrator/administratorPage/administratorPage.dart';
import 'package:com/pages/login/administrator/administratorPage/rentRecePage/rentClass.dart';
import 'package:com/pages/login/administrator/joiner/itemClass.dart';
import 'package:com/pages/routes/checkData.dart';
import 'package:com/pages/sharedPreferences/sharedPreferences.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:com/pages/login/splashPage.dart';
class login1 extends StatefulWidget
{
  @override
  login createState() => login();
}
  var loginUrl = 'http://batswan.design:9000/login';
  int code = 1;
  Dio getAdData = new Dio();
  adminData examp = new adminData();
  Map<String,dynamic> passwordMap = {"password":'123'};
  Map<String,dynamic> verify;
  getAdminData() async{
    Response response = await getAdData.get(loginUrl,queryParameters:
    passwordMap);
    verify = json.decode(response.data);
    print(verify['code']);
    code = verify['code'];
  }
passwordInput(String value)
{
      passwordMap["password"] = value;
      examp.password = value;
      getAdminData();
}

class login extends State<login1>
{
  @override
  void dispose() {
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
    getStock();
    print("我需要的infoget"+ infoGet2.toString());
    if (infoGet2 == true&&count2 == 0) {
      createList();//申请者表格处理
      rentCardDataEst();//租赁者表格处理
      infoGet2Change();
      saveData();
      count2 = 1;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child:Text('烛光入口',style: TextStyle(fontSize: 20.0,color: Colors.white),),
                      alignment: Alignment.center,
                      height: 100.0,
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.all(20.0),
                child:RaisedButton(
                padding: EdgeInsets.all(5.0),
                color: Colors.blue,
                shape: StadiumBorder(),
                  child: Text('用户入口',
                style: TextStyle(color: Colors.white),),
                onPressed:(){
                  Navigator.of(context).pushReplacementNamed('/mainPage1');
                }
              ),
              ),
              Container(
                child:RaisedButton(
                    padding: EdgeInsets.all(5.0),
                    color: Colors.black,
                    shape: StadiumBorder(),
                    child: Text('管理员入口',
                      style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      if(tokenGet == false)
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>login2()));
                      else if(tokenGet == true)
                        Navigator.of(context).pushReplacementNamed('/adminPage');
                      }
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image:AssetImage("assets/images/loginpage.jpg"),
          ),
          )
        ),
    );
  }
}

class login2 extends StatefulWidget
{
  @override
  loginGM createState()=> loginGM();
}

class loginGM extends State<login2>
{
  @override
  void initState() {
    super.initState();
    print("这是infoGet1 =" + infoGet1.toString());
    print("这是infoGet2 =" + infoGet1.toString());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                      child:Text("管理员登录",
                      style: TextStyle(fontSize: 20.0,
                      color: Colors.white),),
                      padding: EdgeInsets.all(20.0),
                    ),
         Container(
           width: 300.0,
          child:TextField(
          decoration: InputDecoration(
              icon: Icon(Icons.text_fields),
              labelText: '请输入管理员口令'
          ),
          onChanged: passwordInput,
          autofocus: false,
        ),
         ),
          Container(
            padding: EdgeInsets.all(20.0),
            child:RaisedButton(
                padding: EdgeInsets.all(5.0),
                color: Colors.black,
                shape: StadiumBorder(),
                child: Text('管理员登录',
                  style: TextStyle(color: Colors.white),),
                onPressed: () {
                  print("isLogin =" + isLogin.toString());
                  print("tokenGet =" + tokenGet.toString());
                  print("infoGet1 =" + infoGet1.toString());
                  print("infoGet2 =" + infoGet2.toString());

                  if (code == 0)
                    Navigator.of(context).pushReplacementNamed('/adminPage');
                  else {
                    showLoginDialog(context);
                  }
                }
            ),
          ),
        ]
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/loginpage.jpg"),
          )
        ),
      ),
    );
  }
}

showLoginDialog(BuildContext context)
{
  showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context)
  {
    return Dialog(
      child: Container(
        height: 120.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0))
        ),
        child: Column(
          children: <Widget>[
            Text("     "),
            Text("输入错误，请重新输入"),
            Text("     "),
            RaisedButton(
              shape: StadiumBorder(),
              child: Text("返回"),
              onPressed: ()
              {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
  );
}