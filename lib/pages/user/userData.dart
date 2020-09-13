import 'package:flutter/material.dart';

class userDataPage extends StatefulWidget{
  @override
  _userData createState() => _userData();
}

class _userData extends State<userDataPage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("个人信息"),
        ),
      body:Center(
       child:Column(
        children: <Widget>[
          Expanded(
           child: Container(

            width: 600.0,
            height: 300.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png')
              )
            ),
            alignment: Alignment.topCenter,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(200.0))
              ),
              height: 60.0,
              width: 20.0,
              child: Image.asset('assets/images/icons/user.png'),
            ),
          )
          )
        ],
      ),
      )
    );
  }
}