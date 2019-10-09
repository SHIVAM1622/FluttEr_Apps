import 'package:flutter/material.dart';
import 'screen/home.dart';
import 'screen/libary.dart';
import 'screen/tranding.dart';
import 'screen/subscribe.dart';
import 'screen/inbox.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color appbarc = Colors.white;
  ThemeData thdata = ThemeData.light();
  int current = 0;
  var page = [home(), tranding(), subscribe(), inbox(), libary()];

  ontapped(index) {
    setState(() {
      current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: thdata,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 16,
          backgroundColor: appbarc,
          title: Container(
            height: 30,
            child: Image.network(
                "https://theimgstudio.com/wp-content/uploads/2018/12/youtube-logo-png-transparent-image-5-e1544042155792.png"),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.today,
                color: Colors.teal,
              ),
              onPressed: () {
                setState(() {
                  if (thdata == ThemeData.dark()) {
                    thdata = ThemeData.light();
                    appbarc = Colors.white;
                  } else {
                    thdata = ThemeData.dark();
                    appbarc = Colors.black54;
                  }
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(Icons.video_call, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 5, 10),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/robert-downey-jr-1553187348.jpg"),
              ),
            )
          ],
        ),
        body: page[current],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 16,
          currentIndex: current,
          onTap: ontapped,
          unselectedItemColor: Colors.black54,
          selectedItemColor: Colors.red,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.home,
              ),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.trending_up), title: Text("Trending")),
            BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions),
              title: Text("Subscribe"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inbox),
              title: Text("inbox"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              title: Text("Library"),
            ),
          ],
        ),
      ),
    );
  }
}
