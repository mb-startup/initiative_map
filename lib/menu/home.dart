import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:initiative_map/ui/cards.dart';

import '../main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          Text("Горячее", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.8)),),
          Container(
            height: 8,
          ),
          InitiativeCard(title: "Сломанная мусорка", subtitle: "Каждое утро прохожу мимо остановки, и сегодня заметил, что кто то сломал мусорку и она упала. Давайте поможем ее восстановить!", image: "assets/image.png", address: "ул. Блюхера, 6А", comments: "5", likes: "30", isHot: true,),
          Container(
            height: 8,
          ),
          Text("Новости", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.8)),),
          Container(
            height: 8,
          ),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(), // to disable GridView's scrolling
              shrinkWrap: true, // You won't see infinite size error
              itemCount: 6,
            itemBuilder: (BuildContext ctx, index) {
                return NewsCard(title: "Начались работы по установлению новой мусорки", subtitle: "Пользователи приложения Карта инициатив совместно решили поставить новую мусорку на месте сломанной. Теперь этим занимается Правительство Ярославлской области.", comments: "2", views: "136",);
            }
          )
        ],
      ),
    );
  }
}