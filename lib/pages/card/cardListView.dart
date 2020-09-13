import 'package:com/pages/card/Mics.dart';
import 'package:com/pages/card/Sound.dart';
import 'package:com/pages/card/bigsound.dart';
import 'package:com/pages/card/bluetoothAudio.dart';
import 'package:com/pages/card/condenserMicS.dart';
import 'package:com/pages/card/headset.dart';
import 'package:flutter/material.dart';

class cardList extends StatefulWidget{
  @override
  _cardList createState() => _cardList();
}

class _cardList extends State<cardList>
{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        bluetoothAudio(),
        Sound(),
        bigsoundCard(),
        condenserMicS(),
        MicS(),
        headset()
      ],
    );
  }
}