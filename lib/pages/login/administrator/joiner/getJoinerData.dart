import 'package:dio/dio.dart';
import 'dart:convert';
  Dio joinerGet = new Dio();
  var joinUrl = 'http://batswan.design:9000/join_show';
  Map <String,dynamic> joinerData;
  List <dynamic> JoinerData;
  List<Map<String,dynamic>> joinerA = [];
joinerDataGet()async
{
  Response joinerRes = await joinerGet.get(joinUrl);
  var joinResJson = json.decode(joinerRes.data);
  joinerData = joinResJson;
  JoinerData = joinerData['msg'].toList();
  for(int i = 0;i<JoinerData.length;i++)
  joinerA.add(JoinerData[i]);
  print(joinerA.toString());
}