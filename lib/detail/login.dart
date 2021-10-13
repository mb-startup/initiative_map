import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:initiative_map/libs/new_icons.dart';
import 'package:initiative_map/main.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, required this.funcForUpdateUI}) : super(key: key);

  final Function funcForUpdateUI;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FlutterLogo(size: 64,),
          Container(
            height: 8,
          ),
          Text("Карта инициатив", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
          Container(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(ProjectColors().vk)
                ),
                onPressed: () async {
                  LocalData().saveBool("auth", true);
                  widget.funcForUpdateUI();
                },
                label: Text(" Авторизация через ВК", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                icon: Icon(NewIcons.vk),
              ),
            ],
          )
        ],
      ),
    );
  }
}