import 'package:flutter/material.dart';

void showPub() {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return _shareWidget();
      });
}
var context;
Widget _shareWidget() {
  return Container(
    height: 250.0,
    child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
          child: Container(
            height: 190.0,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 5.0,
                  childAspectRatio: 1.0),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 6.0, 0.0, 6.0),
                        child: Icon(
                          Icons.ac_unit,
                          size: 50,
                        )),
                    Text(nameItems[index])
                  ],
                );
              },
              itemCount: nameItems.length,
            ),
          ),
        ),
        Container(
          height: 0.5,
          color: Colors.blueGrey,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
            child: GestureDetector(
                onTap:(){
                  Navigator.of(context).pop();
                },
                child: Text(
                  '取  消',
                  style: TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                )),
          ),
        ),
      ],
    ),
  );

}




List<String> nameItems = <String>[
];

List<String> urlItems = <String>[
];

