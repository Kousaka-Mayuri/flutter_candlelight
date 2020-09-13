import 'package:com/pages/routes/checkData.dart';
import 'package:flutter/material.dart';

class condenserMicS extends StatefulWidget{
  @override
  _condenserMicS createState() => _condenserMicS();
}
bool _condenserMicSExpanded = false;
class _condenserMicS extends State<condenserMicS>
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
                  Image(image: AssetImage('assets/images/05.jpg'),),
                  Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text("物品名字:电容麦克"),
                          Text(
                            "60/天（次）", style: TextStyle(color: Colors.blue),),
                          Text("设备内容:无线麦克风（两只起）"),
                          Text("适用范围:大型活动，讲话，文艺活动"),
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
              title: Text("电容麦克"),
            );
          },
          isExpanded: _condenserMicSExpanded,
          canTapOnHeader: true,
        ),
      ],
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          _condenserMicSExpanded = !_condenserMicSExpanded;
        });
      },
    );
  }
}
