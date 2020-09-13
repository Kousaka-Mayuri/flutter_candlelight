import 'package:com/pages/routes/checkData.dart';
import 'package:flutter/material.dart';

class bigsoundCard extends StatefulWidget{
  @override
  _bigsoundCard createState() => _bigsoundCard();
}
bool _bigsoundExpanded = false;
class _bigsoundCard extends State<bigsoundCard>
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
                  Image(image: AssetImage('assets/images/01.jpg'),),
                  Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text("物品名字:大型音响"),
                          Text(
                            "价格:580/天（次）", style: TextStyle(color: Colors.blue),),
                          Text("设备内容:一对音响，两只麦克风，调音台，功放，线圈"),
                          Text("适用范围:室外运动会、室内晚会等"),
                          Text("库存:${amou}", style: TextStyle(color: Colors.blue)),
                          Text("备注:配麦架")
                        ],
                      )
                  )
                ],
              ),
            ),
          ),
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: Text("大型音响"),
            );
          },
          isExpanded: _bigsoundExpanded,
          canTapOnHeader: true,
        ),
      ],
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          _bigsoundExpanded = !_bigsoundExpanded;
        });
      },
    );
  }
}
