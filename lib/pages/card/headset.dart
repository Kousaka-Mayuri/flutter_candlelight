import 'package:com/pages/routes/checkData.dart';
import 'package:flutter/material.dart';

class headset extends StatefulWidget{
  @override
  _headset createState() => _headset();
}
bool _headsetExpanded = false;
class _headset extends State<headset>
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
                  Image(image: AssetImage('assets/images/03.jpg'),),
                  Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text("物品名字:头戴式耳麦"),
                          Text(
                            "60/天（次）", style: TextStyle(color: Colors.blue),),
                          Text("设备内容:无线耳麦"),
                          Text("适用范围:相声话剧类活动"),
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
              title: Text("头戴式耳麦"),
            );
          },
          isExpanded: _headsetExpanded,
          canTapOnHeader: true,
        ),
      ],
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          _headsetExpanded = !_headsetExpanded;
        });
      },
    );
  }
}
