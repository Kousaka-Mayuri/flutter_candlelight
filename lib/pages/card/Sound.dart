import 'package:com/pages/routes/checkData.dart';
import 'package:flutter/material.dart';

class Sound extends StatefulWidget{
  @override
  _Sound createState() => _Sound();
}
bool _SoundExpanded = false;
class _Sound extends State<Sound>
{
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      children: <ExpansionPanel>[
        ExpansionPanel(
          body: SizedBox(
            height: 210.0, //设置高度
            child: Card(
              elevation: 15.0, //设置阴影
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(14.0))),
              child: Row(
                children: <Widget>[
                  Image(image: AssetImage('assets/images/02.jpg'),),
                  Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text("物品名字:卡包音响"),
                          Text(
                            "280/天（次）", style: TextStyle(color: Colors.blue),),
                          Text("设备内容:一对音响"),
                          Text("适用范围:适用大中小型教室活动"),
                          Text("库存:${amou}", style: TextStyle(color: Colors.blue)),
                          Text("备注:无")
                        ],
                      )
                  )
                ],
              ),
            ),
          ),
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: Text("卡包音响"),
            );
          },
          isExpanded: _SoundExpanded,
          canTapOnHeader: true,
        ),
      ],
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          _SoundExpanded = !_SoundExpanded;
        });
      },
    );
  }
}