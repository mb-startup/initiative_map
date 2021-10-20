import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:initiative_map/ui/cards.dart';
import 'package:initiative_map/ui/menu.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../main.dart';

class InitiativeDetail extends StatefulWidget {
  @override
  State<InitiativeDetail> createState() => _InitiativeDetailState();
}

class _InitiativeDetailState extends State<InitiativeDetail> {
  late YandexMapController controller;
  bool isMap = false;

  @override
  Widget build(BuildContext context) {
    IconData map = Icons.location_on_outlined;
    IconData image = Icons.image;
    if (isMap) {
      map = Icons.location_on;
      image = Icons.image_outlined;
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          tooltip: 'Назад',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Сломанная мусорка", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
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
          Stack(
            children: <Widget>[
              if (isMap) Container(
                height: 200,
                child: YandexMap(
                  onMapCreated: (YandexMapController yandexMapController) {
                    controller = yandexMapController;
                  },
                  onMapRendered: () async {
                    controller.addPlacemark(Placemark(
                      point: Point(latitude: 57.624899, longitude: 39.894847),
                      style: PlacemarkStyle(
                        opacity: 0.8,
                        iconName: 'assets/place.png',
                      ),
                    ));
                    await controller.move(
                      point: Point(latitude: 57.624899, longitude: 39.894847),
                    );
                  },
                ),
              ) else CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    height: 200.0,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                    autoPlayInterval: Duration(seconds: 10)
                ),
                items: [1,2,3,4,5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Image.asset("assets/image.png");
                    },
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: ProjectColors().accent,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 8,
                          ),
                          Material(
                              type: MaterialType.transparency,
                              child: Ink(
                                decoration: BoxDecoration(
                                  // color: ProjectColors().primary.shade700,
                                  shape: BoxShape.circle,
                                ),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(1000.0),
                                  onTap: () {
                                    setState(() {
                                      isMap = false;
                                    });
                                  },
                                  child: Padding(
                                    padding:EdgeInsets.all(5.0),
                                    child: Icon(
                                      image,
                                      size: 30.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                          ),
                          Container(
                            width: 4,
                          ),
                          Material(
                              type: MaterialType.transparency,
                              child: Ink(
                                decoration: BoxDecoration(
                                  // color: ProjectColors().primary.shade700,
                                  shape: BoxShape.circle,
                                ),
                                child: InkWell(
                                  //This keeps the splash effect within the circle
                                  borderRadius: BorderRadius.circular(1000.0),
                                  onTap: () {
                                    setState(() {
                                      isMap = true;
                                    });
                                  },
                                  child: Padding(
                                    padding:EdgeInsets.all(5.0),
                                    child: Icon(
                                      map,
                                      size: 30.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                          ),
                          Container(
                            width: 8,
                          ),
                        ]
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Text("Сломанная мусорка", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  subtitle: Column(
                    children: <Widget>[
                      Container(
                        height: 2,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.location_on_outlined, size: 22, color: Theme.of(context).hintColor,),
                          Container(
                            width: 2,
                          ),
                          Expanded(
                            child: Text(
                              "ул. Блюхера, 6А",
                              style: TextStyle(color: Theme.of(context).hintColor, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Каждое утро прохожу мимо остановки, и сегодня заметил, что кто то сломал мусорку и она упала. Давайте поможем ее восстановить!",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black.withOpacity(0.8)),
                  ),
                ),
                Container(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Каждое утро прохожу мимо остановки, и сегодня заметил, что кто то сломал мусорку и она упала. Давайте поможем ее восстановить!\n\nКаждое утро прохожу мимо остановки, и сегодня заметил, что кто то сломал мусорку и она упала. Давайте поможем ее восстановить!\n\nКаждое утро прохожу мимо остановки, и сегодня заметил, что кто то сломал мусорку и она упала. Давайте поможем ее восстановить!",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black.withOpacity(0.7)),
                  ),
                ),
                ButtonBar(
                    children: <Widget>[
                      TextButton.icon(
                          onPressed: () {},
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all(ProjectColors().red),
                              overlayColor: MaterialStateProperty.all(ProjectColors().red.shade200)
                          ),
                          icon: Icon(Icons.favorite_border),
                          label: Text("30", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
                      )
                    ]
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Divider(
                    thickness: 1.5,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}