import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: InkWell(
              onTap: () {},
              child: Column(
                children: <Widget>[
                  Image.asset('assets/image.png'),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(Icons.local_fire_department, color: Colors.deepOrangeAccent,),
                        Text(' Сломанная мусорка', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    subtitle: Row(
                      children: <Widget>[
                        Icon(Icons.location_on_outlined, size: 18, color: Theme.of(context).hintColor,),
                        Expanded(
                          child: Text(
                            'ул. Блюхера, 6А',
                            style: TextStyle(color: Theme.of(context).hintColor,),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Каждое утро прохожу мимо остановки, и сегодня заметил, что кто то сломал мусорку и она упала. Давайте поможем ее восстановить!',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.7)),
                    ),
                  ),
                  ButtonBar(
                      children: <Widget>[
                        TextButton.icon(
                            onPressed: () {},
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.green),
                                overlayColor: MaterialStateProperty.all(Colors.green.shade200)
                            ),
                            icon: Icon(Icons.question_answer_outlined),
                            label: Text("5", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(ProjectColors().red),
                                overlayColor: MaterialStateProperty.all(ProjectColors().red.shade200)
                            ),
                            icon: Icon(Icons.favorite_border),
                            label: Text("Мне нравится (25)", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
                        )
                      ])
                ],
              ),
            ),
          ),
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
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 4.0, ),
                    child: Column(
                      children: <Widget>[
                        Text("Начались работы по установлению новой мусорки", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.9)),),
                        Container(
                          height: 8,
                        ),
                        Text("Пользователи приложения Карта инициатив совместно решили поставить новую мусорку на месте сломанной. Теперь этим занимается Правительство Ярославлской области.", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.7))),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            TextButton.icon(
                                onPressed: () {},
                                style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all(Colors.green),
                                    overlayColor: MaterialStateProperty.all(Colors.green.shade200)
                                ),
                                icon: Icon(Icons.question_answer_outlined),
                                label: Text("2", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
                            ),
                            Container(
                              width: 8,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.remove_red_eye, color: Colors.black.withOpacity(0.6), size: 18,),
                                Text(" 136", style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ),
              );
            }
          )
        ],
      ),
    );
  }
}