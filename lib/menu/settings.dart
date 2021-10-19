import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:initiative_map/main.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: <Widget>[
        Text("Интерфейс", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.8)),),
        Container(
          height: 8,
        ),
        Row(
          children: <Widget>[
            Text("Темная тема", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
            Expanded(child: Container()),
            CupertinoSwitch(
              value: isSwitched,
              activeColor: ProjectColors().accent,
              onChanged: (bool value) { setState(() { isSwitched = value; }); },
            ),
          ],
        ),
        Container(
          height: 8,
        ),
        Text("Местоположение", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.8)),),
        Container(
          height: 8,
        ),
        Row(
          children: <Widget>[
            Text("Доступ к местоположению", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
            Expanded(child: Container()),
            CupertinoSwitch(
              value: isSwitched,
              activeColor: ProjectColors().accent,
              onChanged: (bool value) { setState(() { isSwitched = value; }); },
            ),
          ],
        ),
        Container(
          height: 8,
        ),
        Text("Уведомления", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.8)),),
        Container(
          height: 8,
        ),
        Row(
          children: <Widget>[
            Text("Горячее", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
            Expanded(child: Container()),
            CupertinoSwitch(
              value: isSwitched,
              activeColor: ProjectColors().accent,
              onChanged: (bool value) { setState(() { isSwitched = value; }); },
            ),
          ],
        ),
        Container(
          height: 2,
        ),
        Row(
          children: <Widget>[
            Text("Новые инициативы", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
            Expanded(child: Container()),
            CupertinoSwitch(
              value: isSwitched,
              activeColor: ProjectColors().accent,
              onChanged: (bool value) { setState(() { isSwitched = value; }); },
            ),
          ],
        ),
        Container(
          height: 2,
        ),
        Row(
          children: <Widget>[
            Text("Комментарии", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
            Expanded(child: Container()),
            CupertinoSwitch(
              value: isSwitched,
              activeColor: ProjectColors().accent,
              onChanged: (bool value) { setState(() { isSwitched = value; }); },
            ),
          ],
        ),
      ],
    );
  }
}