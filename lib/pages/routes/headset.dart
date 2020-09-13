import 'package:com/pages/routes/checkData.dart';
import 'package:flutter/material.dart';

class headset extends StatefulWidget
{
  @override
  _headset createState() => _headset();
}
List info = ["物品名字","价格","设备内容","适用范围","库存","备注"];
List info2 = ["头戴式耳麦","60/天（次）","无线耳麦","相声歌剧类活动",amou,"无"];
class _headset extends State<headset>
{
  void initState() {
    super.initState();
    getStock();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("详细消息"),
        ),
        body:Container(
            child:Column(
                children:<Widget>[
                  Center(
                    child: Image.asset("assets/images/headset.png",
                      width: 200.0,
                      height: 200.0,)
                  ),
                  Expanded(
                   child:SizedBox(
                    height: 300.0,
                    child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemCount: 6,
                        separatorBuilder: (BuildContext context,int index)=>
                            Divider(height: 1.0,color: Colors.blue,),
                        itemBuilder: (BuildContext context,int index){
                          return ListTile(
                            title: Text(info[index]),
                            subtitle: Text(info2[index]),
                            isThreeLine: false,
                            dense: true,
                            contentPadding: EdgeInsets.all(4.0),
                            enabled: true,
                            selected: false,
                          );
                        }
                    ),
                  )
                  )
                ]
            )
        )
    );
  }
}