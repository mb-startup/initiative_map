import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../main.dart';

class CabinetPage extends StatefulWidget {
  @override
  _CabinetPageState createState() => _CabinetPageState();
}

class _CabinetPageState extends State<CabinetPage> {
  Object segmentedControlGroupValue = 0;
  final Map<int, Widget> myTabs = const <int, Widget>{
    0: Text("Мужской"),
    1: Text("Женский")
  };

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: <Widget>[
        Row(
          children: <Widget>[
            CircleAvatar(
              radius: 40,
              backgroundColor: ProjectColors().accent,
            ),
            Container(width: 16,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Text>[
                  Text("Осин", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  Text("Владислав", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
          ],
        ),
        Container(
          height: 24,
        ),
        Theme(
          data: ThemeData(
            primarySwatch: ProjectColors().secondary
          ),
          child: TextFormField(
            // cursorColor: ProjectColors().secondary,
            initialValue: 'osinvladislav@yandex.ru',
            decoration: InputDecoration(
              labelText: 'Электронная почта',
              border: OutlineInputBorder(),
              // focusedBorder: OutlineInputBorder(
              //   borderSide: BorderSide(color: ProjectColors().secondary),
              // )
            ),
          ),
        ),
        Container(
          height: 16,
        ),
        Theme(
          data: ThemeData(
            primarySwatch: ProjectColors().secondary
          ),
          child: TextFormField(
            initialValue: '89066379944',
            decoration: InputDecoration(
              labelText: 'Номер телефона',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Container(
          height: 16,
        ),
        Text("Пол", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
        Container(
          height: 8,
        ),
        CupertinoSlidingSegmentedControl(
            groupValue: segmentedControlGroupValue,
            children: myTabs,
            onValueChanged: (i) {
              setState(() {
                segmentedControlGroupValue = i!;
              });
            }
        ),
      ],
    );
  }
}