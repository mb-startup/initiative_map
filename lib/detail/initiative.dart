import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:initiative_map/ui/menu.dart';

import '../main.dart';

class InitiativeDetail extends StatefulWidget {
  @override
  State<InitiativeDetail> createState() => _InitiativeDetailState();
}

class _InitiativeDetailState extends State<InitiativeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          tooltip: 'Назад',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Детальная", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [ProjectColors().secondary, ProjectColors().primary],
                stops: [0.45, 1]
            ),
          ),
        ),
      ),
      body: Container(),
    );
  }
}