import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:initiative_map/detail/initiative.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../main.dart';

class MapPage extends StatefulWidget {
  MapPage({Key? key, required this.scaffoldKey}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late PersistentBottomSheetController _bottomSheetController;
  late YandexMapController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          YandexMap(
            onMapCreated: (YandexMapController yandexMapController) {
              controller = yandexMapController;
            },

            onMapRendered: () async {
              controller.addPlacemark(Placemark(
                point: Point(latitude: 57.624899, longitude: 39.894847),
                onTap: (Placemark self, Point point) async {
                  await controller.move(
                      point: Point(latitude: 57.624899, longitude: 39.894847),
                      animation: MapAnimation(smooth: true, duration: 1.0)
                  );
                  _bottomSheetController = _bottomSheet();
                },
                style: PlacemarkStyle(
                  opacity: 0.8,
                  iconName: 'assets/place.png',
                ),
              ));
              controller.addPlacemark(Placemark(
                point: Point(latitude: 57.607504, longitude: 39.852796),
                onTap: (Placemark self, Point point) async {
                  await controller.move(
                      point: Point(latitude: 57.607504, longitude: 39.852796),
                      animation: MapAnimation(smooth: true, duration: 1.0)
                  );
                  _bottomSheetController = _bottomSheet();
                },
                style: PlacemarkStyle(
                  opacity: 0.8,
                  iconName: 'assets/place.png',
                ),
              ));
              controller.addPlacemark(Placemark(
                point: Point(latitude: 57.642400, longitude: 39.852843),
                onTap: (Placemark self, Point point) async {
                  await controller.move(
                      point: Point(latitude: 57.642400, longitude: 39.852843),
                      animation: MapAnimation(smooth: true, duration: 1.0)
                  );
                  _bottomSheetController = _bottomSheet();
                },
                style: PlacemarkStyle(
                  opacity: 0.8,
                  iconName: 'assets/place.png',
                ),
              ));
              controller.addPlacemark(Placemark(
                point: Point(latitude: 57.639638, longitude: 39.922473),
                onTap: (Placemark self, Point point) async{
                  await controller.move(
                      point: Point(latitude: 57.639638, longitude: 39.922473),
                      animation: MapAnimation(smooth: true, duration: 1.0)
                  );
                  _bottomSheetController = _bottomSheet();
                },
                style: PlacemarkStyle(
                  opacity: 0.8,
                  iconName: 'assets/place.png',
                ),
              ));
              controller.addPlacemark(Placemark(
                point: Point(latitude: 57.580994, longitude: 39.849401),
                onTap: (Placemark self, Point point) async {
                  await controller.move(
                      point: Point(latitude: 57.580994, longitude: 39.849401),
                      animation: MapAnimation(smooth: true, duration: 1.0)
                  );
                  _bottomSheetController = _bottomSheet();
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
                  _bottomSheetController = _bottomSheet();
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

            onMapTap: (Point point) {
              _bottomSheetController.close();
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: ProjectColors().accent,
                          borderRadius: BorderRadius.all(Radius.circular(25))
                      ),
                      child: Column(
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
                                      controller.zoomIn();
                                    },
                                    child: Padding(
                                      padding:EdgeInsets.all(5.0),
                                      child: Icon(
                                        Icons.add,
                                        size: 35.0,
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
                                      controller.zoomOut();
                                    },
                                    child: Padding(
                                      padding:EdgeInsets.all(5.0),
                                      child: Icon(
                                        Icons.remove,
                                        size: 35.0,
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
              ],
            ),
          )
      ]
    );
  }

  @override
  void dispose () {
    _bottomSheetController.close();
    super.dispose();
  }

  PersistentBottomSheetController _bottomSheet() {
    return widget.scaffoldKey.currentState!.showBottomSheet(
          (context) => Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 24.0),
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
      ),
    );
  }
}