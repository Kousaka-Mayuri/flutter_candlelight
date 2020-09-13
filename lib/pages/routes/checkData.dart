import 'package:dio/dio.dart';
import 'dart:convert';
var checkUrl = 'http://batswan.design:9000/check';

Dio stock = new Dio();
String amou;
Map<String,dynamic> checkData;
getStock() async {
  Response checkResponse = await stock.get(checkUrl);
  var checkResJson = json.decode(checkResponse.data);
  amou = checkResJson['data'].toString();
}