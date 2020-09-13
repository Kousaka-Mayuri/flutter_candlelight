import 'package:com/pages/card/cardListView.dart';
import 'package:com/pages/home/listView.dart';
import 'package:com/pages/rent/rentPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class rent1 extends StatefulWidget
{
  @override
  rent createState() => rent();
}

class rent extends State<rent1>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
           child:Container(
            height: 400.0,
        alignment: Alignment.center,
              child: cardList(),

      )
          ),
          RaisedButton(
            color: Colors.lightBlue,
            shape: StadiumBorder(),
            child: Text("新建",style: TextStyle(color: Colors.white),),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>rentPage()));
            },
          )
    ]
      )
    );
  }
}