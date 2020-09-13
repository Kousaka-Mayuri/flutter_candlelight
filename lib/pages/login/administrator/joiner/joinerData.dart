import 'package:com/pages/login/administrator/joiner/getJoinerData.dart';

class joinerData {
  String name;
  String qq;
  String department;
  String grade;
  String description;

  joinerData(
      {this.name, this.qq, this.department, this.grade, this.description});

  joinerData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    qq = json['qq'];
    department = json['department'];
    grade = json['grade'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['qq'] = this.qq;
    data['department'] = this.department;
    data['grade'] = this.grade;
    data['description'] = this.description;
    return data;
  }
}