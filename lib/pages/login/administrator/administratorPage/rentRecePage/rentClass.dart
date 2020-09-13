
import 'package:com/pages/login/administrator/administratorPage/rentRecePage/rentDataCollect.dart';

class rentClass{
    String equipment;
    int amount;
    String start;
    String end;
    String name;
    String id;
    String department;
    String phone;
  rentClass(this.equipment,this.amount,this.start,
      this.end,this.name,this.id,this.department,this.phone);
}

  List <rentClass> rentList = [];
rentCardDataEst()
{
  for(int i = 0 ;i< rentData.length;i++)
    {
      String equipment = rentData[i]['equipment'];
      int amount = rentData[i]['amount'];
      String start = rentData[i]['start'];
      String end = rentData[i]['end'];
      String name = rentData[i]['name'];
      String id = rentData[i]['id'];
      String department = rentData[i]['department'];
      String phone = rentData[i]['phone'];
      rentClass rentExample = rentClass(equipment,amount,start,
      end,name,id,department,phone);
      rentList.add(rentExample);
    }
}