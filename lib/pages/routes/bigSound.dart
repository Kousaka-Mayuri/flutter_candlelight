import 'package:flutter/material.dart';
import 'package:com/pages/routes/checkData.dart';
class cableMike extends StatefulWidget
{
  @override
  _cableMike createState() => _cableMike();
}
List info = ["物品名字","价格","设备内容","适用范围","库存","备注"];
List info2 = ["大型音响","580/天（次）","一对音响，两只麦克风，调音台，功放，线圈","室外运动会、室内晚会等",amou,
  "配麦架"];
class _cableMike extends State<cableMike>
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
                  Center(child: Image.asset("assets/images/bigsound.png",
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