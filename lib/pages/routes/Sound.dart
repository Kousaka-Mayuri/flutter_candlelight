import 'package:flutter/material.dart';
import 'package:com/pages/routes/checkData.dart';
class bluetoothAudio extends StatefulWidget
{
  @override
  _bluetoothAudio createState() => _bluetoothAudio();
}
List info = ["物品名字","价格","设备内容","适用范围","库存","备注"];
List info2 = ["卡包音响","280/天（次）","一对音响","适用大中小型教室活动",amou,
  "无"];
class _bluetoothAudio extends State<bluetoothAudio>
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
                  Center(child: Image.asset('assets/images/cardpackagesound.png',
                    width: 200.0,
                    height: 200.0,),),
                  Expanded(
                   child:SizedBox(
                    height: 300.0,
                    child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemCount:6,
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