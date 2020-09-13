import 'package:com/pages/routes/checkData.dart';
import 'package:flutter/material.dart';

class MicS extends StatefulWidget{
  @override
  _MicS createState() => _MicS();
}
bool _MicsExpanded = false;
class _MicS extends State<MicS>
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
                  Image(image: AssetImage('assets/images/06.jpg'),),
                  Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text("物品名字:有线麦克"),
                          Text(
                            "30/天（次）", style: TextStyle(color: Colors.blue),),
                          Text("设备内容:有线麦克风（5米）"),
                          Text("适用范围:演讲、主持、歌唱等"),
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
              title: Text("有线麦克"),
            );
          },
          isExpanded: _MicsExpanded,
          canTapOnHeader: true,
        ),
      ],
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          _MicsExpanded = !_MicsExpanded;
        });
      },
    );
  }
}
