import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:initiative_map/detail/initiative.dart';

import '../main.dart';

class InitiativeCard extends StatelessWidget {
  InitiativeCard({Key? key, required this.title, required this.subtitle, required this.image, required this.address, required this.comments, required this.likes, required this.isHot}) : super(key: key);

  final String title;
  final String subtitle;
  final String image;
  final String address;
  final String comments;
  final String likes;
  final bool isHot;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>
                InitiativeDetail()
            ),
          );
        },
        child: Column(
          children: <Widget>[
            Image.asset(image),
            ListTile(
              title: Row(
                children: <Widget>[
                  if (isHot) Icon(Icons.local_fire_department, color: Colors.deepOrangeAccent,),
                  if (isHot) Container(
                    width: 2,
                  ),
                  Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ],
              ),
              subtitle: Column(
                children: <Widget>[
                  Container(
                    height: 2,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.location_on_outlined, size: 18, color: Theme.of(context).hintColor,),
                      Expanded(
                        child: Text(
                          address,
                          style: TextStyle(color: Theme.of(context).hintColor,),
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
                subtitle,
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
                      label: Text(comments, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
                  ),
                  TextButton.icon(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(ProjectColors().red),
                          overlayColor: MaterialStateProperty.all(ProjectColors().red.shade200)
                      ),
                      icon: Icon(Icons.favorite_border),
                      label: Text(likes, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
                  )
                ])
          ],
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  NewsCard({Key? key, required this.title, required this.subtitle, required this.comments, required this.views}) : super(key: key);

  final String title;
  final String subtitle;
  final String comments;
  final String views;

  @override
  Widget build(BuildContext context) {
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
                Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.9)),),
                Container(
                  height: 8,
                ),
                Text(subtitle, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.7))),
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
                        label: Text(comments, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
                    ),
                    Container(
                      width: 8,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.remove_red_eye, color: Colors.black.withOpacity(0.6), size: 18,),
                        Text(" " + views, style: TextStyle(color: Colors.black.withOpacity(0.5)),),
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

}