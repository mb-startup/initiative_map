import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: <Widget>[
        Text("О проекте", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.8)),),
        Container(
          height: 8,
        ),
        Text("«мб стартап?» - проект, созданный из первокурсников ИВТ факультета ЯрГУ имени П. Г. Демидова. \nДруг с другом мы знакомы недолго, зато спустя время у нас сформировался дружный коллектив, способный создать серьезный продукт. \n\nУ нас нет главных, ведь весь проект - плод совместной работы над идеей, а потом и над реализацией. Мы стараемся и создаем продукт, в который действительно верим сами!", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.7))),
        Container(
          height: 8,
        ),
        Text("Команда", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
        Container(
          height: 4,
        ),
        ListTile(
          title: Text('Владислав Осин', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/photos/1.png"),
          ),
          subtitle: Text('Разработчик мобильного приложения'),
        ),
        ListTile(
          title: Text('Денис Гречухин', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/photos/3.png"),
          ),
          subtitle: Text('Разработчик сайта'),
        ),
        ListTile(
          title: Text('Сергей Летков', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/photos/4.png"),
          ),
          subtitle: Text('Дизайнер'),
        ),
        ListTile(
          title: Text('Олеся Сметанина', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/photos/2.png"),
          ),
          subtitle: Text('Менеджер'),
        ),
      ],
    );
  }
}