
class personData
{
  String name;
  String department;
  String grade;
  String description;
  String Qwechat;

  personData(
      {this.name, this.department, this.description, this.grade, this.Qwechat});

  personData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    department = json['department'];
    description = json['description'];
    grade = json['grade'];
    Qwechat = json['Qwechat'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['department'] = this.department;
    data['description'] = this.description;
    data['grade'] = this.grade;
    data['Qwechat'] = this.Qwechat;
    return data;
  }
}