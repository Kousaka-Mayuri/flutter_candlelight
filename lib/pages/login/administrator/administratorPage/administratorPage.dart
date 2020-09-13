import 'package:com/pages/login/administrator/administratorPage/rentRecePage/rentRecePage.dart';
import 'package:com/pages/login/administrator/joiner/CardList.dart';
import 'package:com/pages/sharedPreferences/sharedPreferences.dart';
import 'package:flutter/material.dart';
class adminPage extends StatefulWidget
{
  @override
  _adminPage createState() => _adminPage();
}

class _adminPage extends State<adminPage>
{
  int _currentindex = 0;
  List adminRoutes = [
        joinerPage(),
        rentRecePage(),
  ];
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  void initState() {
    super.initState();
    tokenGet = true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("返回登录界面"),
              leading: Icon(Icons.arrow_back),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/login1');
              },
            ),
            ListTile(
              title: Text("切换用户模式"),
              leading: Icon(Icons.person),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/mainPage1');
              },
            )
          ],
        ),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("管理员模式"),
      ),
      body: adminRoutes[_currentindex],
      bottomNavigationBar:BottomNavigationBar(
              currentIndex: _currentindex,
            onTap: (int index)
          {
          setState(() {
          this._currentindex = index;
            });
          },
        items: [
          BottomNavigationBarItem(
            title: Text("申请者表单"),
            icon: Icon(Icons.person_add)
          ),
          BottomNavigationBarItem(
            title: Text("租赁申请"),
            icon: Icon(Icons.monetization_on)
          )
        ],
      ),
        );
  }
}