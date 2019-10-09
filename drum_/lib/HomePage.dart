import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

buttonpressed(String numm) {}

class _HomePageState extends State<HomePage> {
  buttonpressed(String numm) {
    AssetsAudioPlayer player = AssetsAudioPlayer();
    setState(() {
      if (numm == "one") {
        player.open(AssetsAudio(
          asset: "one.mp3",
          folder: "s/song/",
        ));
        player.play();
      }
      if (numm == "two") {
        player.open(AssetsAudio(
          asset: "two.mp3",
          folder: "s/song/",
        ));
        player.play();
      }
      if (numm == "three") {
        player.open(AssetsAudio(
          asset: "three.mp3",
          folder: "s/song/",
        ));
        player.play();
      }
      if (numm == "four") {
        player.open(AssetsAudio(
          asset: "four.mp3",
          folder: "s/song/",
        ));
        player.play();
      }
      if (numm == "five") {
        player.open(AssetsAudio(
          asset: "fv.mp3",
          folder: "s/song/",
        ));
        player.play();
      }
      if (numm == "six") {
        player.open(AssetsAudio(
          asset: "sixth.mp3",
          folder: "s/song/",
        ));
        player.play();
      }
      if (numm == "seven") {
        player.open(AssetsAudio(
          asset: "seventh.mp3",
          folder: "s/song/",
        ));
        player.play();
      }
      if (numm == "eight") {
        player.open(AssetsAudio(
          asset: "eighth.mp3",
          folder: "s/song/",
        ));
        player.play();
      }
    });
  }

  Widget buildButton(String buttontext, Color kala) {
    return Expanded(
        child: MaterialButton(
          
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            height: 85,
            
            color: kala,
            splashColor: Colors.orange,
            padding: EdgeInsets.all(20),
            onPressed: () => buttonpressed(buttontext)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DRUM"),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: <Widget>[
          Padding(
           padding: EdgeInsets.only(top: 15),
           child:   Container(
             
              height: 150.0,
             
              child: Image.asset('s/image/sps.jpg',),
            ),
          ),
            Container(
              width: 500,
              height: 360,
            
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      buildButton("one", Color(0xff2F363F)),
                      buildButton("two", Color(0xff3C40C6)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      buildButton("three", Color(0xff2ecc72)),
                      buildButton("four", Color(0xffEEC213)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      buildButton("five", Color(0xff2F363F)),
                      buildButton("six", Color(0xff777E8B)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      buildButton("seven", Color(0xffEAF0F1)),
                      buildButton("eight", Color(0xff758AA2)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
