import 'package:com/pages/about/joinUs.dart';
import 'package:com/pages/login/administrator/administratorPage/administratorPage.dart';
import 'package:com/pages/sharedPreferences/sharedPreferences.dart';
import 'package:flutter/material.dart';
import 'package:com/pages/home/home.dart';
import 'package:com/pages/rent/rent.dart';
import 'package:com/pages/about/about.dart';
import 'package:com/pages/login/login.dart';
import 'package:com/pages/login/splashPage.dart';
import 'package:com/pages/rent/rentPage.dart';

void main()async
{
  runApp(MyApp());

}

class MyApp extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String,WidgetBuilder>{
        '/login1' : (BuildContext context) => login1(),
        '/mainPage1' : (BuildContext context) => mainPage1(),
        '/adminPage' : (BuildContext context) => adminPage(),
      },
      debugShowCheckedModeBanner: false,
      title: ('烛光公司'),
      home: Splash(),
    );
  }
}

class mainPage1 extends StatefulWidget
{
  @override
  mainPage createState() => mainPage();
}

class mainPage extends State<mainPage1> {

  List _pages = [
    homePage1(),
    rent1(),
    about1()
  ];
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('烛光文化传媒公司',
            style: TextStyle(
              fontSize: 20.0,
                color: Colors.white
            ),),
        ),
                  body:this._pages[this._currentindex],
                   bottomNavigationBar:BottomNavigationBar(
                         currentIndex: _currentindex,
                            onTap: (int index)
                    {
                      setState(() {
                        this._currentindex = index;
                      });
                    },
                     fixedColor: Colors.black,
                            items: [
                            BottomNavigationBarItem(
                            title: Text('主页'),
                            icon: Icon(Icons.change_history)
                            ),
                            BottomNavigationBarItem(
                            title: Text('租贸'),
                            icon: Icon(Icons.monetization_on)
                            ),
                            BottomNavigationBarItem(
                            title: Text('关于'),
                            icon: Icon(Icons.person)
                            )
                            ],
                  ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            SizedBox(
              child:const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.fill,
                  )
                ),
                accountName: Text("烛光用户：12315615"),
                accountEmail: Text("sadcas@ddd.com"),
               currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/icons/user.png',
              ),
              ),
              margin: EdgeInsets.zero,
            ),
            ),
            Divider(
              height: 3.0,
              thickness: 0.5,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("个人资料"),
              onTap: (){
              },
            ),
            Divider(
              height: 3.0,
              thickness: 0.5,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("新建租赁"),
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>rentPage()));
              },
            ),
            Divider(
              height: 3.0,
              thickness: 0.5,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("设置"),
              onTap: (){

              },
            ),
            Divider(
              height: 3.0,
              thickness: 0.5,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text("加入我们"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>join()
                ));
              },
            ),
            Divider(
              height: 3.0,
              thickness: 0.5,
              color: Colors.grey,
            ),
            ListTile(
              title: Text("切换管理员模式"),
              leading: Icon(Icons.account_circle),
              onTap: (){
                if(tokenGet == true)
                  {
                    Navigator.of(context).pushReplacementNamed('/adminPage');
                  }
                else if(tokenGet == false)
                  {
                    showMainPageDialog(context);
                  }
              },
            ),
            Divider(
              height: 3.0,
              thickness: 0.5,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.error),
              title: Text("版本详情"),
              onTap: (){
                return showDialog(context: context,
                    builder: (_) => AboutDialog(
                      applicationName: "这是一个版本信息",
                      applicationIcon: Icon(Icons.grade),
                      applicationVersion: '1.0.0',
                      children: <Widget>[
                        Text("查看版本信息")
                      ],
                    )
                );
              },
            ),
            Divider(
              height: 3.0,
              thickness: 0.5,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.settings_power),
              title: Text("注销"),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/login1');
              },
            ),
            Divider(
              height: 3.0,
              thickness: 0.5,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

showMainPageDialog(BuildContext context)
{
  showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context)
      {
        return Dialog(
          child: Container(
            height: 120.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0))
            ),
            child: Column(
              children: <Widget>[
                Text("     "),
                Text("您并未输入过管理员口令，是否输入？"),
                Text("     "),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
                  RaisedButton(
              shape: StadiumBorder(),
                    child: Text("确认"),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>login2()));
                    },
            ),
                  RaisedButton(
                  shape: StadiumBorder(),
                    child: Text("返回"),
                  onPressed: ()
                  {
                    Navigator.of(context).pop();
                  },
                ),
              ]
                )
              ],
            ),
          ),
        );
      }
  );
}