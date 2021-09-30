import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:initiative_map/main.dart';
import 'package:initiative_map/ui/cards.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
        padding: EdgeInsets.all(16.0),
          itemCount: 10,
          itemBuilder: (BuildContext ctx, index) {
            return InitiativeCard(title: "Сломанная мусорка", subtitle: "Каждое утро прохожу мимо остановки, и сегодня заметил, что кто то сломал мусорку и она упала. Давайте поможем ее восстановить!", image: "assets/image.png", address: "ул. Блюхера, 6А", comments: "5", likes: "30", isHot: false,);
          },
      ),
    );
  }
}