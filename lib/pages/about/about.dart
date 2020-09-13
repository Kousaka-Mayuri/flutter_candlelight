import 'package:com/pages/about/company.dart';
import 'package:flutter/material.dart';
import 'package:com/pages/about/joinUs.dart';
class about1 extends StatefulWidget
{
  @override
  about createState() => about();
}
bool _isInfoExpanded = false;
bool _isPurposeExpanded = false;
bool _isProjectExpanded = false;
bool _isBusinessExpanded = false;
bool _isPersonInfoExpanded = false;
var TextColor = Colors.black;
class about extends State<about1>
{

  List aboutInfo = ["公司资料","加入我们"];
  List <WidgetBuilder> Widgetroutes = [(BuildContext context) => com(),
    (BuildContext context)=> join()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 100.0,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Icon(Icons.account_circle,size: 100.0,),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child:Column(
              children:<Widget>[
                      Text("烛光用户:XXX",style: TextStyle(fontSize: 30.0),),
                      Text("手机号:138XXXXXXXX",style: TextStyle(fontSize: 15.0),)
          ]
          )
                ),
                  ],
            ),
          ),
          Expanded(
            child:ListView(
             children:<Widget>[
               Container(
                 child:Column(
                children:<Widget>[
                  ExpansionPanelList(
                    children: <ExpansionPanel>[
                          ExpansionPanel(
                            body: Text("      徐州烛光文化传媒有限公司起始于2009年中国矿业大学百年校庆之际。是一家专门服务于校园大型文化活动、企业招聘、演讲报告,提供音响设备租赁，活动方案策划执行的校园文化传媒公司。",
                            style: TextStyle(color: TextColor),),
                            headerBuilder: (context,isExpanded){
                              return ListTile(
                                title: Text("公司简介"),
                              );
                            },
                            isExpanded: _isInfoExpanded,
                            canTapOnHeader: true,
                          ),
                    ],
                    expansionCallback:(panelIndex,isExpanded){
                    setState(() {
                      _isInfoExpanded = !_isInfoExpanded;
                    });
                  },
                  ),
                  Divider(
                    height: 5.0,
                    thickness: 5.0,
                    color: Colors.white,
                  ),
                  ExpansionPanelList(
                    children: <ExpansionPanel>[
                      ExpansionPanel(
                        body: Text("      公司长期以来，以“青春奉献、自强不息”为公司精神，肩负一种责任、一种使命，传递一种文化，创高校文化服务品牌，誓为我国高校校园文化产业发展做出杰出贡献，做中国文化产业领军企业。",
                        style: TextStyle(color: TextColor),),
                        headerBuilder: (context,isExpanded){
                          return ListTile(
                            title: Text("公司宗旨"),
                          );
                        },
                        isExpanded: _isPurposeExpanded,
                        canTapOnHeader: true,
                      ),
                    ],
                    expansionCallback:(panelIndex,isExpanded){
                      setState(() {
                        _isPurposeExpanded = !_isPurposeExpanded;
                      });
                    },
                  ),
                  Divider(
                    height: 5.0,
                    thickness: 5.0,
                    color: Colors.white,
                  ),
                  ExpansionPanelList(
                    children: <ExpansionPanel>[
                      ExpansionPanel(
                        body: Column(
                      children: <Widget>[
                          ExpansionPanelList(
                          children: <ExpansionPanel>[
                            ExpansionPanel(
                              body: Text("      为各类型文化演出活动提供组织策划、具体实施、舞台搭建、灯光、音响设备租赁等全套服务，打造集策划、宣传、组织一体化服务体系。",
                              style: TextStyle(color: TextColor),),
                              headerBuilder: (context,isExpanded){
                                return ListTile(
                                  title: Text("主营业务——文化传媒活动组织策划"),
                                );
                              },
                              isExpanded: _isBusinessExpanded,
                              canTapOnHeader: true,
                            ),
                          ],
                          expansionCallback:(panelIndex,isExpanded){
                            setState(() {
                              _isBusinessExpanded=!_isBusinessExpanded;
                            });
                          },
                        ),
                         Divider(
                          height: 5.0,
                          thickness: 5.0,
                          color: Colors.white,
                        ),
                          ExpansionPanelList(
                          children: <ExpansionPanel>[
                            ExpansionPanel(
                              body: Column(
                              children: <Widget>[
                                    Text("朱国梁(总经理)"),
                                    Text("手机：15105207036"),
                                    Text("QQ：2401949967（烛光文化传媒）"),
                                    Text("微信公众号：烛光文化"),
                                    Text("地址：江苏省 徐州市 中国矿业大学")
                            ],
                          ),
                              headerBuilder: (context,isExpanded){
                                return ListTile(
                                  title: Text("联系方式"),
                                );
                              },
                              isExpanded: _isPersonInfoExpanded,
                              canTapOnHeader: true,
                            ),
                          ],
                          expansionCallback:(panelIndex,isExpanded){
                            setState(() {
                              _isPersonInfoExpanded = !_isPersonInfoExpanded;
                            });
                          },
                        ),
                      ],
                  ),
                        headerBuilder: (context,isExpanded){
                          return ListTile(
                            title: Text("产品与服务"),
                          );
                        },
                        isExpanded: _isProjectExpanded,
                        canTapOnHeader: true,
                      ),
                    ],
                    expansionCallback:(panelIndex,isExpanded){
                      setState(() {
                        _isProjectExpanded = !_isProjectExpanded;
                      });
                    },
                  ),
                  Divider(
                    height: 5.0,
                    thickness: 5.0,
                    color: Colors.white,
                  ),
                  ]
              )
          )
    ]
            )
             ),
              ]
      )
    );
  }
}