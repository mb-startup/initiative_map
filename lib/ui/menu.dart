import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class Menu extends StatefulWidget {
  Menu({Key? key, required this.activePage, required this.changePage}) : super(key: key);

  final Pages activePage;
  final Function changePage;

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _header(),
          Container(
            height: 8,
          ),
          _item(icon: Icons.home_filled, title: pageTitles[Pages.home]!, page: Pages.home),
          _item(icon: Icons.splitscreen, title: pageTitles[Pages.feed]!, page: Pages.feed),
          _item(icon: Icons.map_outlined, title: pageTitles[Pages.map]!, page: Pages.map),
          _item(icon: Icons.info_outline, title: pageTitles[Pages.about]!, page: Pages.about),
          _item(icon: Icons.settings, title: pageTitles[Pages.settings]!, page: Pages.settings),
          Divider(),
          _footer()
        ],
      ),
    );
  }

  Widget _header() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [ProjectColors().primary.shade900, ProjectColors().secondary.shade900])
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 32,
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green,
              ),
              Container(width: 16,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Text>[
                    Text("Осин", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                    Text("Владислав", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton.icon(
                  icon: Icon(Icons.location_on, size: 25,),
                  onPressed: () {

                  },
                  label: Text('ЯРОСЛАВЛЬ', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      overlayColor: MaterialStateProperty.all(Colors.white24),
                      minimumSize: MaterialStateProperty.all(Size(0, 30)),
                  )
              ),
              Expanded(
                child: Container(),
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
                      onTap: () {},
                      child: Padding(
                        padding:EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.person,
                          size: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
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
                      onTap: () {},
                      child: Padding(
                        padding:EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.logout,
                          size: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
              ),
            ],
          ),

          Container(
            height: 8,
          ),

          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: 16.0),
          //   child: TextButton.icon(
          //       icon: Icon(Icons.add),
          //       onPressed: () {
          //
          //       },
          //       label: Text('Выдвинуть инициативу', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
          //       style: ButtonStyle(
          //           foregroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent),
          //           overlayColor: MaterialStateProperty.all(Color(0x33f44336)),
          //           minimumSize: MaterialStateProperty.all(Size(double.infinity, 30)),
          //           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //               RoundedRectangleBorder(
          //                   borderRadius: BorderRadius.circular(18.0),
          //                   side: BorderSide(color: Colors.deepOrangeAccent)
          //               )
          //           )
          //       )
          //   ),
          // )
          ElevatedButton.icon(
              icon: Icon(Icons.add),
              onPressed: () {

              },
              label: Text('Выдвинуть инициативу', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(ProjectColors().accent),
                  minimumSize: MaterialStateProperty.all(Size(double.infinity, 40)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                      )
                  )
              )
          )
        ],
      ),
    );
  }

  Widget _item({required IconData icon, required String title, required Pages page}) {
    return Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 2.0, bottom: 2.0),
      child: Theme(
        data: ThemeData(
          primarySwatch: ProjectColors().secondary,
          splashColor: ProjectColors().secondary.shade100,
          highlightColor: ProjectColors().secondary.shade100
        ),
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          leading: Icon(icon,),
          title: Text(title, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
          selectedTileColor: ProjectColors().secondary.shade200,
          selected: widget.activePage == page,
          onTap: () {
            widget.changePage(page, pageTitles[page]);
          },
        ),
      ),
    );
  }

  Widget _footer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("beta v0.1", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey),),
          Container(
            height: 4,
          ),
          Text("Команда «мб стартап?», Ярославль 2021", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),),
        ],
      ),
    );
  }
}
