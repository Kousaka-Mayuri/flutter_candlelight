import 'package:com/pages/login/administrator/joiner/getJoinerData.dart';
import 'package:flutter/material.dart';

class Item {
  String name;
  String qq;
  String department;
  String grade;
  String description;

  Item(this.name,this.qq,this.department,this.grade, this.description);
}
List<Item> items = [];
  createList() {
  for (int i = 0; i < joinerA.length; i ++) {
    String name = joinerA[i]['name'];
    String qq = joinerA[i]['qq'];
    String department = joinerA[i]['department'];
    String grade = joinerA[i]['grade'];
    String description = joinerA[i]['description'];
    Item item = Item(name, qq, department, grade, description);
    items.add(item);
  }
}