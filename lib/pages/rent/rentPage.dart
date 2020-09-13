import 'package:com/pages/dataYMD/endData.dart';
import 'package:com/pages/rent/userData.dart';
import 'package:flutter/material.dart';
import 'package:com/pages/dataYMD/startData.dart';
import 'package:dio/dio.dart';
class rentPage extends StatefulWidget
{
  @override
  _rentPage createState() => _rentPage();
}
  var url = 'http://batswan.design:9000/apply';
  Dio postRent = new Dio();
  userData example = new userData();

  deviceInput(String value) {
  example.device = value;
}

  amountInput(String value) {
  example.amount = value;
}

  postRentData() async {
  final response = postRent.post(url, data: {
    'equipment': example.device,
    'amount': example.amount,
    'start': example.dataStart,
    'end': example.dataEnd
  });
}
class _rentPage extends State<rentPage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("租赁信息"),
      ),
      body: Container(
        alignment: Alignment.center,
       child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 300.0,
           child:TextField(
           decoration: InputDecoration(
             icon: Image.asset('assets/images/icons/device.png',
             width: 50.0,
             height: 30.0,),
             labelText: '设备',
           ),
            onChanged: deviceInput,
          ),
          ),
          Container(
            width: 300.0,
           child: TextField(
            decoration: InputDecoration(
              icon: Image.asset('assets/images/icons/number.png',
              width: 50.0,
              height: 30.0,),
              labelText: '数量',
            ),
            keyboardType: TextInputType.number,
            onChanged: amountInput,
          ),
          ),
          Divider(
            height: 20.0,
            thickness: 1.0,
            color: Colors.grey,
          ),
        Center(
          child:Text("选取起始时间",style: TextStyle(fontSize: 20.0),),
        ),
         dataPage1(),
          Divider(
            height: 20.0,
            thickness: 1.0,
            color: Colors.grey,
          ),
         Center(
           child: Text("选取最终时间",style: TextStyle(fontSize: 20.0),)
         ),
         dataPage2(),
          Divider(
            height: 20.0,
            thickness: 1.0,
            color: Colors.grey,
          ),
         Container(
           padding: EdgeInsets.all(30.0),
          child:RaisedButton(
           child: Text("提交申请"),
          onPressed: () {

            showADialog(context);
          }
          )
        )
        ],
      ),
      )
    );
  }
}

User exam = new User();
nameInput(String value){exam.name = value;}
departmentInput(String value){exam.department = value;}
idInput(String value){exam.id = value;}
phoneInput(String value){exam.phone = value;}
postUserData()async
{
   final response = postRent.post(url,data: {
     'name':exam.name,
     'department':exam.department,
     'id':exam.id,
     'phone':exam.phone
   });
}
void showADialog(BuildContext context) {
  showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
           child: Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(100.0))
             ),
            height: 500.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("请填写个人信息"),
                TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "姓名",
                  ),
                  onChanged: nameInput,
                  autofocus: true,
                ),
                TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.grade),
                    labelText: "学号",
                  ),
                  onChanged: idInput,
                  keyboardType: TextInputType.number,
                  autofocus: true,
                ),
                TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.supervisor_account),
                    labelText: "学院",
                  ),
                  onChanged: departmentInput,
                  autofocus: true,
                ),
                TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.phone),
                    labelText: "电话",
                  ),
                  onChanged: phoneInput,
                  keyboardType: TextInputType.phone,
                  autofocus: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      child:RaisedButton(
                        child: Text("确认"),
                   onPressed: (){
                          Navigator.of(context).pop();
                          postRentData();
                          postUserData();
                          print(example.device);
                          print(example.amount);
                          print(example.dataStart);
                          print(example.timeStart);
                          print(example.dataEnd);
                          print(example.timeEnd);
                   },
                      )
                  ),
                  Text("                  "),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                   child:RaisedButton(
                    child: Text('返回'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
                  )
                ],
                )
              ],
            ),
          )
        );
      }
  );
}
