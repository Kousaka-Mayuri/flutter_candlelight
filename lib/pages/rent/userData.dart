class userData {
  String device;
  String amount;
  String dataStart;
  String timeStart;
  String dataEnd;
  String timeEnd;

  userData(
      {this.device,
        this.amount,
        this.dataStart,
      this.dataEnd,
      this.timeStart,
      this.timeEnd});

  userData.fromJson(Map<String, dynamic> json) {
    device = json['device'];
    amount = json['amount'];
    dataStart = json['dataStart'];
    timeStart = json['timeStart'];
    dataEnd = json['dataEnd'];
    timeEnd = json['timeEnd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['device'] = this.device;
    data['amount'] = this.amount;
    data['dataStart'] = this.dataStart;
    data['timeStart'] = this.timeStart;
    data['dataEnd'] = this.dataEnd;
    data['timeEnd'] = this.timeEnd;
    return data;
  }
}

class User {
  String name;
  String department;
  String id;
  String phone;
  User({this.name, this.department, this.id, this.phone});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    department = json['department'];
    id = json['id'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['department'] = this.department;
    data['id'] = this.id;
    data['phone'] = this.phone;
    return data;
  }
}