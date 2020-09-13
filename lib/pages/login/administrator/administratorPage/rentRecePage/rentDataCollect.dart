import 'package:dio/dio.dart';
import 'dart:convert';
Dio getRent =new Dio();

  List <dynamic> rentCollect=[];
  List<Map<String,dynamic>> rentData = [];
 var RentDataUrl = 'http://batswan.design:9000/apply_show';
  getRentFun()async
{
  Response response = await getRent.get(RentDataUrl);
  var responseBody = json.decode(response.data);
  rentCollect = responseBody['msg'].toList();
  for(int i =0;i<rentCollect.length;i++)
    rentData.add(rentCollect[i]);
  print(responseBody.toString());
}