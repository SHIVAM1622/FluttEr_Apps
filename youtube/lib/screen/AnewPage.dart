import 'package:flutter/material.dart';

class AnewPage extends StatefulWidget {
  final String title;
  final String name;

  AnewPage({Key key, @required this.title, this.name}) : super(key: key);

  @override
  _AnewPageState createState() => _AnewPageState(title: title, name: name);
}

class _AnewPageState extends State<AnewPage> {
  String title;
  String name;
  _AnewPageState({Key key, @required this.title, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(
       children: <Widget>[
           Container(
          height: 180,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(bottom:50.0),
            child: Image.network(
                "https://pmcvariety.files.wordpress.com/2017/09/youtube-logo.png", fit: BoxFit.fill),
          ),
        ),
        Column(
          children: <Widget>[
            ListTile(
             
             leading: CircleAvatar(
               radius: 30,
               backgroundImage: NetworkImage("https://media1.giphy.com/media/l1IYee0ahOwqz99de/giphy.gif"),
             ),
             title: Text(name),
             subtitle: Text("200M subscribers"),
             
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: OutlineButton(
                splashColor: Colors.white12,
                textTheme: ButtonTextTheme.accent,
                onPressed: (){},
                 child: Text("subscribe",style: TextStyle(),),
               
              ),
            ) 
          ],
        )

        
       ],
      ),
    );
  }
}
