import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

import 'package:youtube/screen/inbox.dart';

class videos extends StatefulWidget {
  final String url;
  final String title;
  final String imageurl;
  final String name;

  videos({Key key, @required this.url, this.title, this.imageurl, this.name})
      : super(key: key);

  @override
  _videosState createState() =>
      _videosState(url: url, title: title, imageurl: imageurl,name: name);
}

class _videosState extends State<videos> {

    
  Color v = Colors.black;
  h(index) {
    setState(() {
      if (v == Colors.black || k == Colors.blue) {
        v = Colors.blue;
        k = Colors.black;
        if(v == Colors.blue){
            count--;
         }
      } else {
        v = Colors.black;
      }
    });
  }

  Color k = Colors.black;
  int count = 2;
  p(index) {
    setState(() {
      if (k == Colors.black || v == Colors.blue) {
        k = Colors.blue;
        v = Colors.black;
        if (k == Colors.blue) {
          count++;
        }
      } else
        k = Colors.black;
    });
  }

  String url;
  String title;
  String imageurl;
  String name;

  _videosState(
      {Key key, @required this.url, this.title, this.imageurl, this.name});

  VideoPlayerController _controller;

  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(url)
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _controller.value.isPlaying
                        ? _controller.pause()
                        : _controller.play();
                  });
                },
                child: Container(
                  child: _controller.value.initialized
                      ? AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        )
                      : Container(),
                ),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      '20M views',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        IconButton(
                          splashColor: Colors.grey,
                          color: v,
                          onPressed: () {
                            h(inbox);
                          },
                          icon: Icon(Icons.thumb_up),
                        ),
                        Text("20k")
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        IconButton(
                          color: k,
                          onPressed: () {
                            p(inbox);
                          },
                          icon: Icon(Icons.thumb_down),
                        ),
                        Text("$count")
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.share),
                        ),
                        Text("Share")
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.cloud_download),
                        ),
                        Text("Dowloads")
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.save),
                        ),
                        Text("Save")
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 5,
            ),
            Container(
              child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(imageurl),
                  ),
                  title: Text(title),
                  subtitle: Text(name),
                  trailing: Image.network(
                      'https://cdn.dribbble.com/users/1077130/screenshots/3524752/free-youtube-subscribe-button-png-download-by-alfredocreates.jpg')),
            ),
            Divider(
              height: 5,
            ),
            SizedBox(
              height: 450,
              width: double.infinity,
              child: ListView.builder(
                itemCount:8,
                itemBuilder: (BuildContext ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Image.network(imageurl),
                      title: Text(title),
                      subtitle: Text(name),
                      trailing: Icon(Icons.more_vert),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       _controller.value.isPlaying
      //           ? _controller.pause()
      //           : _controller.play();
      //     });
      //   },
      //   child: Icon(
      //     _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
      //   ),
      // ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
