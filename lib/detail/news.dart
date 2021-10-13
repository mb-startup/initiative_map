import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:initiative_map/ui/fullscreen.dart';

import '../main.dart';

class NewsDetail extends StatefulWidget {
  @override
  State<NewsDetail> createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {

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
        title: Text("Начались работы по установлению новой мусорки", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
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
      body: ListView(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                FullscreenImageRoute(),
              );
            },
              child: Image.asset("assets/image.png")
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Text("Начались работы по установлению новой мусорки", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                Container(
                  height: 8,
                ),
                Text("Пользователи приложения Карта инициатив совместно решили поставить новую мусорку на месте сломанной. Теперь этим занимается Правительство Ярославлской области.", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black.withOpacity(0.8),)),
                Container(
                  height: 8,
                ),
                Text(
                  "Пользователи приложения Карта инициатив совместно решили поставить новую мусорку на месте сломанной. Теперь этим занимается Правительство Ярославлской области.\n\nПользователи приложения Карта инициатив совместно решили поставить новую мусорку на месте сломанной. Теперь этим занимается Правительство Ярославлской области.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black.withOpacity(0.7)),
                ),
                Container(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.remove_red_eye, color: Colors.black.withOpacity(0.5), size: 18,),
                        Text(" " + "136", style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FullscreenImageRoute extends MaterialPageRoute {
  FullscreenImageRoute()
      : super(
      builder: (context) => new FullscreenImage());

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(opacity: animation, child: child);
  }
}