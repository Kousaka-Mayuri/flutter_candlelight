import 'package:dio/dio.dart';
import 'dart:convert';
Dio swiper = new Dio();
List<Map<String,dynamic>> swiperData = [];
getSwiperData()async{
  var swiperUrl = 'http://batswan.design:9000/get_pics';
  Response swiperResponse =await swiper.get(swiperUrl);
  var swiperJson = json.decode(swiperResponse.data);
  var swiperPic = swiperJson.toList();
  for(int i = 0;i<swiperJson.length;i++)
    swiperData.add(swiperJson[i]);
}