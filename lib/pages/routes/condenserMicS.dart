import 'package:flutter/material.dart';
import 'package:com/pages/routes/checkData.dart';
class cardPackageSound extends StatefulWidget
{
  @override
  _cardPackageSound createState() => _cardPackageSound();
}
List info = ["物品名字","价格","设备内容","适用范围","库存","备注"];
List info2 = ["电容麦克","60/天（次）","无线麦克风（两只起）","大型活动，讲话，文艺活动",amou,
  "无"];
class _cardPackageSound extends State<cardPackageSound>
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
                  Center(child: Image.asset("assets/images/condensermics.png",
                    width: 200.0,
                    height: 200.0,),),
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