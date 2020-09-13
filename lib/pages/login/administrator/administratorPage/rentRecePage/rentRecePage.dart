import 'package:com/pages/login/administrator/administratorPage/rentRecePage/rentCard.dart';
import 'package:com/pages/login/administrator/administratorPage/rentRecePage/rentClass.dart';
import 'package:com/pages/login/administrator/joiner/joinerPageBackground.dart';
import 'package:flutter/material.dart';
class rentRecePage extends StatefulWidget{
  @override
  _rentRecePage createState() => _rentRecePage();
}

class _rentRecePage extends State<rentRecePage>
{
  ScrollController _controller1 = new ScrollController();
  List<rentDemoCard> get _card1 => rentList.map((rentClass _item1) =>rentDemoCard(_item1)).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          alignment: AlignmentDirectional.topStart,
          children: <Widget>[
            AnimatedBackground(controller: _controller1),
            Center(
              child:ListView(
                  controller: _controller1,
                  children: _card1
              ),
            ),
          ],
        )
    );
  }
}