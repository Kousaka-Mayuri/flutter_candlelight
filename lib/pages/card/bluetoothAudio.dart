import 'package:com/pages/routes/checkData.dart';
import 'package:flutter/material.dart';

class bluetoothAudio extends StatefulWidget{
  @override
  _bluetoothAudio createState() => _bluetoothAudio();
}
bool _bluetoothAuioExpanded = false;
class _bluetoothAudio extends State<bluetoothAudio>
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
                  Image(image: AssetImage('assets/images/04.jpg'),),
                  Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text("物品名字:便携式充电蓝牙音响"),
                          Text(
                            "价格:120/天（次）", style: TextStyle(color: Colors.blue),),
                          Text("设备内容:一到两个话筒"),
                          Text("适用范围:快闪，野外活动，公教小活动"),
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
              title: Text("便携式充电蓝牙音响"),
            );
          },
          isExpanded: _bluetoothAuioExpanded,
          canTapOnHeader: true,
        ),
      ],
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
         _bluetoothAuioExpanded = !_bluetoothAuioExpanded;
        });
      },
    );
  }
}