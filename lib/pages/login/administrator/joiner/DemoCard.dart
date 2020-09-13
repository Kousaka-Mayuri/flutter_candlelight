import 'package:flutter/material.dart';
import 'package:com/pages/login/administrator/joiner/itemClass.dart';

class DemoCard extends StatelessWidget {

  DemoCard(this.item);
  Item item;

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
        color: Colors.lightBlueAccent,
        child: Container(
            constraints: BoxConstraints.expand(height: 256),
            child: RawMaterialButton(
              onPressed: () {
              showApplyDialog(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("          "),
                        Text(item.name, style: _style.copyWith(fontSize: 30)),
                        Container(
                         child:Text('            '
                        ),
                        ),
                        Expanded(child:
                         Container(
                          child:Text(item.description)
                        )
                        )
                      ]
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                    Text(item.qq),
                    Text(item.grade),
                    Text(item.department)
                      ]
                  )
                ],
              ),
            )
        )
    );
  }
}

showApplyDialog(BuildContext context)
{
  showDialog<void>(
      context: context,
  barrierDismissible: false,
  builder: (BuildContext context)
      {
      return Dialog(
       child: Container(
         width: 100.0,
            height: 120.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0))
            ),
         child: Column(
           children: <Widget>[
             Text("    "),
             Text("是否同意加入申请"),
             Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text("同意"),
                    shape: StadiumBorder(),
                    onPressed: ()
                    {
                      Navigator.of(context).pop();
                    },
                  ),
                  Text("    "),
                  RaisedButton(
                    child: Text("否认"),
                    shape: StadiumBorder(),
                    onPressed: ()
                    {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
             )
           ],
         ),
       ),
      );
          }
      );
}