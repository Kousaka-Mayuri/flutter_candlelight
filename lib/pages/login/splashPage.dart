import 'package:com/pages/http/getData.dart';
import 'package:com/pages/login/administrator/administratorPage/rentRecePage/rentDataCollect.dart';
import 'package:com/pages/login/administrator/joiner/getJoinerData.dart';
import 'package:com/pages/sharedPreferences/sharedPreferences.dart';
import 'package:flutter/material.dart';
import 'dart:async';
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}
  int count2;
class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          alignment: Alignment.bottomRight,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/splash.jpg"),
                fit: BoxFit.cover
            ),
          ),
          child: OutlineButton(
              child: Text(
                "跳过",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              shape: StadiumBorder(),
              onPressed: go2HomePage
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    infoGet1 = false;
    infoGet2 = false;
    getSwiperData();
    infoGet1Confirm();
    if (infoGet1 == false) {
      joinerDataGet(); //申请者信息获取
      getRentFun(); //租赁者信息获取
      infoGet1Change();
      infoGet2Change();
      count2 = 0;
  }
    countDown();
    print("这是启动页的infoGet1 = " + infoGet1.toString());
  }

  void countDown() {
    var _duration = new Duration(seconds: 2);
    Future.delayed(_duration, go2HomePage);
  }

  void go2HomePage() {
    Navigator.of(context).pushReplacementNamed('/login1');
  }
}