import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:initiative_map/detail/initiative.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../main.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late YandexMapController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: YandexMap(
          onMapCreated: (YandexMapController yandexMapController) {
            controller = yandexMapController;
          },

          onMapRendered: () async {
            controller.addPlacemark(Placemark(
              point: Point(latitude: 57.624899, longitude: 39.894847),
              onTap: (Placemark self, Point point) {
                showBottomSheet(
                  context: context,
                  builder: (context) {
                    return Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.location_on, size: 32.0,),
                          title: Text("Сломанная мусорка", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                          subtitle: Text("ул. Блюхера, 8А", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.8))),
                        )
                      ],
                    );
                  },
                );
              },
              style: PlacemarkStyle(
                opacity: 0.8,
                iconName: 'assets/place.png',
              ),
            ));
            controller.addPlacemark(Placemark(
              point: Point(latitude: 57.607504, longitude: 39.852796),
              onTap: (Placemark self, Point point) {
                showBottomSheet(
                  context: context,
                  builder: (context) {
                    return Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.location_on, size: 32.0,),
                          title: Text("Сломанная мусорка", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                          subtitle: Text("ул. Блюхера, 8А", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.8))),
                        )
                      ],
                    );
                  },
                );
              },
              style: PlacemarkStyle(
                opacity: 0.8,
                iconName: 'assets/place.png',
              ),
            ));
            controller.addPlacemark(Placemark(
              point: Point(latitude: 57.642400, longitude: 39.852843),
              onTap: (Placemark self, Point point) {
                showBottomSheet(
                  context: context,
                  builder: (context) {
                    return Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.location_on, size: 32.0,),
                          title: Text("Сломанная мусорка", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                          subtitle: Text("ул. Блюхера, 8А", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.8))),
                        )
                      ],
                    );
                  },
                );
              },
              style: PlacemarkStyle(
                opacity: 0.8,
                iconName: 'assets/place.png',
              ),
            ));
            controller.addPlacemark(Placemark(
              point: Point(latitude: 57.639638, longitude: 39.922473),
              onTap: (Placemark self, Point point) {
                showBottomSheet(
                  context: context,
                  builder: (context) {
                    return Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.location_on, size: 32.0,),
                          title: Text("Сломанная мусорка", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                          subtitle: Text("ул. Блюхера, 8А", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.8))),
                        )
                      ],
                    );
                  },
                );
              },
              style: PlacemarkStyle(
                opacity: 0.8,
                iconName: 'assets/place.png',
              ),
            ));
            controller.addPlacemark(Placemark(
              point: Point(latitude: 57.580994, longitude: 39.849401),
              onTap: (Placemark self, Point point) {
                showBottomSheet(
                  context: context,
                  builder: (context) {
                    return Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.location_on, size: 32.0,),
                          title: Text("Сломанная мусорка", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                          subtitle: Text("ул. Блюхера, 8А", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.8))),
                        )
                      ],
                    );
                  },
                );
              },
              style: PlacemarkStyle(
                opacity: 0.8,
                iconName: 'assets/place.png',
              ),
            ));
            controller.addPlacemark(Placemark(
              point: Point(latitude: 57.664429, longitude: 39.841363),
              onTap: (Placemark self, Point point) async {
                await controller.move(
                  point: Point(latitude: 57.664429, longitude: 39.841363),
                  animation: MapAnimation(smooth: true, duration: 1.0)
                );
                showBottomSheet(
                  context: context,
                  builder: (context) {
                    return Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 32.0),
                          child: Theme(
                            data: ThemeData(
                                primarySwatch: ProjectColors().secondary,
                                splashColor: ProjectColors().secondary.shade100,
                                highlightColor: ProjectColors().secondary.shade100
                            ),
                            child: ListTile(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>
                                      InitiativeDetail()
                                  ),
                                );
                              },
                              leading: Icon(Icons.location_on, size: 35.0,),
                              title: Text("Сломанная мусорка", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                              subtitle: Text("ул. Блюхера, 8А", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.8))),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                );
              },
              style: PlacemarkStyle(
                opacity: 0.8,
                iconName: 'assets/place.png',
              ),
            ));
            await controller.setBounds(
              northEastPoint: Point(latitude: 57.669782, longitude: 39.940587),
              southWestPoint: Point(latitude: 57.567190, longitude: 39.809734),
            );
          },
        )
    );
  }
}