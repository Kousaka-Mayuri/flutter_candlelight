import 'package:com/pages/routes/routes.dart';
import 'package:flutter/material.dart';

class listView extends StatefulWidget
{
  @override
  _listView createState() => _listView();
}


class _listView extends State<listView>
{
  List device = [
  '便携式充电蓝牙音响','卡包音响','大型音响','电容麦克','有线麦克','头戴式耳麦'];
  List range = [
    '快闪，野外活动，公教小活动','适用大中小型教室活动','室外运动会、室内晚会等','大型活动，讲话，文艺活动','演讲、主持、歌唱等',
    '相声话剧类活动'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 600.0,
      child: ListView.separated(
        padding: EdgeInsets.all(0),
          scrollDirection: Axis.vertical,
          itemCount: 6,
          separatorBuilder: (BuildContext context,int index)=>
            Divider(height: 1.0,color: Colors.blue,),
          itemBuilder: (BuildContext context,int index){
        return ListTile(
          title: Text(device[index]),
          subtitle: Text(range[index]),
          trailing: Icon(Icons.arrow_forward_ios),
          isThreeLine: false,
          dense: true,
          contentPadding: EdgeInsets.all(3.0),
          enabled: true,
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: routesList[index]));
          },
          onLongPress: () {},
          selected: false,
        );
      }
      ),
    );
  }
}


