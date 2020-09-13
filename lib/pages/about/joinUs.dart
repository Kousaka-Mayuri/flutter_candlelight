import 'package:com/pages/about/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class join extends StatefulWidget
{
  @override
  _join createState()=> _join();
}

class _join extends State<join>
{

  personData example = new personData();
  nameInput(String value){example.name = value;}
  departmentInput(String value){example.department = value;}
  gradeInput(String value){example.grade = value;}
  QwechatInput(String value){example.grade = value;}
  descriptionInput(String value){example.description = value;}
  Dio perData = new Dio();
  Response response = new Response();
  var url = 'http://batswan.design:9000/join';
  postData()async{
    response = await perData.post(url,data:{
      "name":example.name,
      "department":example.department,
      "grade":example.grade,
      "qq":example.Qwechat,
      "description":example.description
    }
    );
    print(response.data);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar
          (title:Text("加入我们",
      style: TextStyle(color: Colors.white),
      ),
      ),
           body:Column(
             mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            Container(
                decoration: BoxDecoration(
                shape: BoxShape.circle,
                ),
             child:Text("加入我们 Join Us ！！！",style: TextStyle(fontSize: 25.0,color: Colors.black))
          ),
            Column(
            children: <Widget>[
              Divider(thickness: 1.0,height: 1.0,color: Colors.grey,),
              Container(
                height: 60.0,
                child:TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: "姓名",
                  border:InputBorder.none
                ),
                onChanged: nameInput,
                autofocus: true,
              )
              ),
              Divider(thickness: 1.0,height: 1.0,color: Colors.grey,),
              Container(
                  height: 60.0,
               child:TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.book),
                  labelText: "年级",
                    border:InputBorder.none
                ),
                onChanged: gradeInput,
                autofocus: true,
              )
    ),
              Divider(thickness: 1.0,height: 1.0,color: Colors.grey,),
              Container(
                  height: 60.0,
               child:TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.supervisor_account),
                  labelText: "学院",
                    border:InputBorder.none
                ),
                onChanged: gradeInput,
                autofocus: true,
              )
              ),
              Divider(thickness: 1.0,height: 1.0,color: Colors.grey,),
              Container(
                  height: 60.0,
                child:TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.wb_cloudy),
                  labelText: "QQ/微信",
                    border:InputBorder.none
                ),
                onChanged: QwechatInput,
                autofocus: true,
              )
              ),
              Divider(thickness: 1.0,height: 1.0,color: Colors.grey,),
              Container(
                child:TextField(
                maxLines: 6,
                decoration: InputDecoration(
                  icon: Icon(Icons.wc),
                  hintText: ("自我介绍"),
                    border:InputBorder.none
                ),
                onChanged: descriptionInput,
                autofocus: true,
                )
              ),
              Divider(thickness: 1.0,height: 1.0,color: Colors.grey,),
              Container(
                padding: EdgeInsets.all(20.0),
                 child:RaisedButton(
                  color: Color.fromARGB(252, 252, 157, 154),
                  child: Text("点击提交"),
                  onPressed: postData,
              )
              )
            ],
          )
        ],
      ),
    );
  }
}