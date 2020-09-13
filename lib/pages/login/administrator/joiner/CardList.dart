import 'package:com/pages/login/administrator/joiner/joinerPageBackground.dart';
import 'package:flutter/material.dart';
import 'package:com/pages/login/administrator/joiner/itemClass.dart';
import 'package:com/pages/login/administrator/joiner//DemoCard.dart';

class joinerPage extends StatefulWidget
{
  @override
  _joinerPage createState()=> _joinerPage();
}

class _joinerPage extends State<joinerPage>
{
  ScrollController _controller = new ScrollController();
  List<DemoCard> get _card => items.map((Item _item) =>DemoCard(_item)).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
        alignment: AlignmentDirectional.topStart,
      children: <Widget>[
          AnimatedBackground(controller: _controller,),
          Center(
            child:ListView(
              controller: _controller,
              children: _card
          ),
        )
      ],
        )
    );
  }
}