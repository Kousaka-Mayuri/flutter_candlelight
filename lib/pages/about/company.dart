import 'package:flutter/material.dart';

class com extends StatefulWidget
{
  @override
  _com createState() => _com();
}

class _com extends State<com>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("公司详情"),),
      body: Column(
        children: <Widget>[
          Center(
              child:Image.asset("assets/images/123.png")
          ),
          Text("公司简介:",style:
            TextStyle(fontSize: 20.0),),
          Text("    徐州烛光文化传媒有限公司起始于2009年，中国矿业大学百年校庆之际。"
              "是一家专门服务于校园大型文化活动、企业招聘、演讲报告，提供音响设备租赁，活动方案策划执行的校园文化传媒公司。"),
          Text("公司宗旨:",style:
            TextStyle(fontSize: 20.0),),
          Text("    公司长期以来，以“青春奉献、自强不息”为公司精神，肩负一种责任、一种使命，传递一种文化，"
              "创高校文化服务品牌，誓为我国高校校园文化产业发展做出杰出贡献，做中国文化产业领军企业。"),
          Text("产品与服务:",style:
          TextStyle(fontSize: 30.0),),
          Text("业营服务——文化传媒活动组织策划",style:
            TextStyle(fontSize: 20.0),),
          Text("    为各类型文化演出活动提供组织策划、具体实施、舞台搭建、灯光、音响设备租赁等全套服务，打造集策划、宣传、组织一体化服务体系。"),
          Text("联系方式:",style:
            TextStyle(fontSize: 20.0),),
          Text("朱国梁(总经理)"),
          Text("手机：15105207036"),
          Text("QQ：2401949967（烛光文化传媒）"),
          Text("微信公众号：烛光文化"),
          Text("地址：江苏省 徐州市 中国矿业大学")
        ],
      ),
    );
  }
}