import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:initiative_map/main.dart';

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
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () {},
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/image.png'),
                    ListTile(
                      title: Text('Сломанная мусорка', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
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
            );
          },
      ),
    );
  }
}