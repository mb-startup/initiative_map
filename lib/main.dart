import 'package:flutter/material.dart';
import 'package:initiative_map/ui/menu.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'detail/login.dart';
import 'menu/about.dart';
import 'menu/feed.dart';
import 'menu/home.dart';
import 'menu/map.dart';
import 'menu/settings.dart';

void main() {
  runApp(InitiativeMapApp());
}

enum Pages {
  login,
  home,
  feed,
  map,
  about,
  settings
}

Map<Pages, String> pageTitles = {
  Pages.home: "Главная",
  Pages.feed: "Лента",
  Pages.map: "Карта",
  Pages.about: "О проекте",
  Pages.settings: "Настройки",
};

final Map<int, Color> primaryMap = {
  50: Color(0xD0275D8),
  100: Color(0x1A0275D8),
  200: Color(0x330275D8),
  300: Color(0x4D0275D8),
  400: Color(0x660275D8),
  500: Color(0x800275D8),
  600: Color(0x990275D8),
  700: Color(0xB30275D8),
  800: Color(0xCC0275D8),
  900: Color(0xE60275D8),
};

final Map<int, Color> secondaryMap = {
  50: Color(0xD7889EA),
  100: Color(0x1A7889EA),
  200: Color(0x337889EA),
  300: Color(0x4D7889EA),
  400: Color(0x667889EA),
  500: Color(0x807889EA),
  600: Color(0x997889EA),
  700: Color(0xB37889EA),
  800: Color(0xCC7889EA),
  900: Color(0xE67889EA),
};

final Map<int, Color> secondaryDarkMap = {
  50: Color(0xD4c5aac),
  100: Color(0x1A4c5aac),
  200: Color(0x334c5aac),
  300: Color(0x4D4c5aac),
  400: Color(0x664c5aac),
  500: Color(0x804c5aac),
  600: Color(0x994c5aac),
  700: Color(0xB34c5aac),
  800: Color(0xCC4c5aac),
  900: Color(0xE64c5aac),
};

final Map<int, Color> accentMap = {
  50: Color(0xDFF5A5A),
  100: Color(0x1AFF5A5A),
  200: Color(0x33FF5A5A),
  300: Color(0x4DFF5A5A),
  400: Color(0x66FF5A5A),
  500: Color(0x80FF5A5A),
  600: Color(0x99FF5A5A),
  700: Color(0xB3FF5A5A),
  800: Color(0xCCFF5A5A),
  900: Color(0xE6FF5A5A),
};

final Map<int, Color> redMap = {
  50: Color(0xDFFC1D1D),
  100: Color(0x1AFC1D1D),
  200: Color(0x33FC1D1D),
  300: Color(0x4DFC1D1D),
  400: Color(0x66FC1D1D),
  500: Color(0x80FC1D1D),
  600: Color(0x99FC1D1D),
  700: Color(0xB3FC1D1D),
  800: Color(0xCCFC1D1D),
  900: Color(0xE6FC1D1D),
};


class ProjectColors {
  MaterialColor primary = MaterialColor(0xFF0275D8, primaryMap);
  MaterialColor secondary = MaterialColor(0xFF7889EA, secondaryMap);
  MaterialColor secondaryDark = MaterialColor(0xFF4c5aac, secondaryDarkMap);
  MaterialColor accent = MaterialColor(0xFFFF5A5A, accentMap);
  MaterialColor red = MaterialColor(0xFFFC1D1D, redMap);
  Color vk = Color(0xff4C75A3);
}

class LocalData {
  saveString(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  saveInt(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(key, value);
  }

  saveDouble(String key, double value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble(key, value);
  }

  saveBool(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, value);
  }

  Future<String?> getString(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringValue = prefs.getString(key);
    return stringValue;
  }

  Future<int?> getInt(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? intValue = prefs.getInt(key);
    return intValue;
  }

  Future<double?> getDouble(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    double? doubleValue = prefs.getDouble(key);
    return doubleValue;
  }

  Future<bool?> getBool(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? boolValue = prefs.getBool(key);
    return boolValue;
  }

  Future<bool> isExist (String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(key);
  }

}



class InitiativeMapApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Карта инициатив',
      theme: ThemeData(
        primarySwatch: ProjectColors().primary,
        primaryColor: ProjectColors().primary,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String auth = "null";
  Pages activePage = Pages.home;
  String titlePage = pageTitles[Pages.home]!;

  @override
  void initState() {
    super.initState();
    checkAuth();
  }

  @override
  Widget build(BuildContext context) {
    Widget body = HomePage();
    List<Widget> actions = [];
    Widget? drawer = Menu(activePage: activePage, changePage: changePage, funcForUpdateUI: checkAuth,);

    switch (activePage) {
      case Pages.feed:
        body = FeedPage();
        actions = [
          PopupMenu()
        ];
        break;
      case Pages.map:
        body = MapPage();
        break;
      case Pages.about:
        body = AboutPage();
        break;
      case Pages.settings:
        body = SettingsPage();
        break;
      default:
        body = HomePage();
        break;
    }

    AppBar? appBar = AppBar(
      title: Text(titlePage, style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
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
      actions: actions,
    );

    if (auth == "false") {
      activePage = Pages.login;
      body = LoginPage(funcForUpdateUI: checkAuth,);
      drawer = null;
      appBar = null;
    } else if (auth == "null") {
      body = Container();
      drawer = null;
      appBar = null;
    }


    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      body: body,
    );
  }

  changePage(Pages page, String title) {
    setState(() => {
      activePage = page,
      titlePage = title,
      Navigator.pop(context)
    });
  }

  checkAuth() async {
    var isAuth = await LocalData().isExist("auth");
    if (isAuth) {
      isAuth = (await LocalData().getBool("auth"))!;
    }
    setState(() {
      auth = isAuth.toString();
    });
  }
}

