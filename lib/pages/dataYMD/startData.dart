import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:com/pages/rent/rentPage.dart';
class dataPage2 extends StatefulWidget
{
  @override
  _dataPage createState()=> _dataPage();
}
String dataStartString;
class _dataPage extends State<dataPage2>
{
  DateTime data = DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  Future<void> _selectData(BuildContext context)async
  {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: data,
        firstDate: DateTime(2019,8),
        lastDate: DateTime(2101)
    );
    if(picked != null && picked != data)
      {
        print("选取日期:${data.toString()}");
        setState(() {
          data = picked;
          dataStartString = data.toString();
          List <String> lit = [];//临时储存数组
          for(int i = 0 ;i <10;i++)
          {
            lit.add(dataStartString[i]);
          }
          example.dataStart = JsonEncoder().convert(lit);
          example.dataStart = example.dataStart.replaceAll('[', '');
          example.dataStart = example.dataStart.replaceAll('"', '');
          example.dataStart = example.dataStart.replaceAll(',', '');
          example.dataStart = example.dataStart.replaceAll(']', '');
        });
      }
    if(picked == null )data = DateTime.now();
  }

    Future<void> _selectedTime(BuildContext context)async
    {
      final TimeOfDay picked = await
          showTimePicker(
              context: context,
              initialTime: time);
      if(picked != null && picked !=time)
        print("选取时间:${time.toString()}");
      setState(() {
          time = picked;
      });
      if(picked == null )time = TimeOfDay.now();
    }
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Container(
            width: 350.0,
           child:RaisedButton(
            child: Text("日期选取:${data.toString()}"),
            onPressed: (){
              _selectData(context);
              setState(() {
                List <String> lit = [];//临时储存数组
                String dataString = data.toString();
                for(int i = 0 ;i <10;i++)
                {
                  lit.add(dataString[i]);

                }
                example.dataStart = JsonEncoder().convert(lit);
                example.dataStart = example.dataStart.replaceAll('[', '');
                example.dataStart = example.dataStart.replaceAll('"', '');
                example.dataStart = example.dataStart.replaceAll(',', '');
                example.dataStart = example.dataStart.replaceAll(']', '');
              }
              );
            },
          ),
          ),
          Container(
            width: 350.0,
           child:RaisedButton(
            child: Text("时间选取:${time.toString()}"),
            onPressed: (){
              _selectedTime(context);
              setState(() {
                example.timeStart = time.toString();
                List <String> lit = [];//临时储存数组
                String dataString = data.toString();
                for(int i = 0 ;i <10;i++)
                {
                  lit.add(dataString[i]);
                }
                example.dataStart = JsonEncoder().convert(lit);
                example.dataStart = example.dataStart.replaceAll('[', '');
                example.dataStart = example.dataStart.replaceAll('"', '');
                example.dataStart = example.dataStart.replaceAll(',', '');
                example.dataStart = example.dataStart.replaceAll(']', '');
              });
            },
          )
          )
        ],
    );
  }
}