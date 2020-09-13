import 'package:com/pages/login/administrator/administratorPage/rentRecePage/rentClass.dart';
import 'package:flutter/material.dart';

class rentDemoCard extends StatelessWidget {
  rentDemoCard(this.item1);
  rentClass item1;
  static final Shadow _shadow = Shadow(offset: Offset(2.0, 2.0), color: Colors.black26);
  final TextStyle _style = TextStyle(color: Colors.white70, shadows: [_shadow]);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Colors.black26),
            borderRadius: BorderRadius.circular(32)
        ),
        color: Colors.amberAccent,
        child: Container(
            constraints: BoxConstraints.expand(height: 256),
            child: RawMaterialButton(
              onPressed: () {
              showRentDialog(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("          "),
                        Text(item1.name, style: _style.copyWith(fontSize: 30)),
                        Container(
                          child:Text('            '
                          ),
                        ),
                        Expanded(child:
                         Container(
                            child:Text(item1.equipment +'  数量  '+ item1.amount.toString())
                        )
                        )
                      ]
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget>[
                        Text(item1.phone),
                        Text(item1.id),
                        Text(item1.department),
                        Text('初始时间' +item1.start),
                        Text('结束时间' +item1.end)
                      ]
                  )
                ],
              ),
            )
        )
    );
  }
}

showRentDialog(BuildContext context)
{
  showDialog<void>(
      context:context,
      barrierDismissible: false,
      builder: (BuildContext context)
      {
        return Dialog(
          child: Container(
            height: 120.0,
            width: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0))
            ),
            child:Column(
              children: <Widget>[
                Text("    "),
                Text("是否同意租赁申请？"),
              Expanded(
               child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                RaisedButton(
                  shape: StadiumBorder(),
                  child: Text("同意"),
                  onPressed: ()
                  {
                    Navigator.of(context).pop();
                  },
                ),
                  Text("    "),
                  RaisedButton(
                    shape: StadiumBorder(),
                    child: Text("否认"),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  )
                ]
              )
              )
        ],
            )
        ),
        );
      }
  );
}