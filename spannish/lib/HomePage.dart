import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  shakti(){
    setState(() {
      
    
        AssetsAudioPlayer player = AssetsAudioPlayer();
            player.open(AssetsAudio(
          asset: "shaktiman.mp3",
          folder: "kaladon/songs/",
        ));
      });  
  }
  buttonpressed(String numm) {
    AssetsAudioPlayer player = AssetsAudioPlayer();
    setState(() {
      if (numm == "one") {
        player.open(AssetsAudio(
          asset: "one.wav",
          folder: "kaladon/songs/",
        ));
      }
      if (numm == "two") {
        player.open(AssetsAudio(
          asset: "two.wav",
          folder: "kaladon/songs/",
        ));
      }
      if (numm == "three") {
        player.open(AssetsAudio(
          asset: "three.wav",
          folder: "kaladon/songs/",
        ));
      }
      if (numm == "four") {
        player.open(AssetsAudio(
          asset: "four.wav",
          folder: "kaladon/songs/",
        ));
      }
      if (numm == "five") {
        player.open(AssetsAudio(
          asset: "five.wav",
          folder: "kaladon/songs/",
        ));
      }
      if (numm == "six") {
        player.open(AssetsAudio(
          asset: "six.wav",
          folder: "kaladon/songs/",
        ));
      }
      if (numm == "seven") {
        player.open(AssetsAudio(
          asset: "seven.wav",
          folder: "kaladon/songs/",
        ));
      }
      if (numm == "eight") {
        player.open(AssetsAudio(
          asset: "eight.wav",
          folder: "kaladon/songs/",
        ));
      }
      if (numm == "nine") {
        player.open(AssetsAudio(
          asset: "nine.wav",
          folder: "kaladon/songs/",
        ));
      }
      if (numm == "ten") {
        player.open(AssetsAudio(
          asset: "ten.wav",
          folder: "kaladon/songs/",
        ));
      }
    });
  }

  Widget buildButton(String buttontext, Color kala) {
    return Expanded(
        child: MaterialButton(
      splashColor: Colors.orange,
      child: Text(buttontext, style: TextStyle(color: Colors.white),),
      color: kala,
      padding: EdgeInsets.all(20),
      onPressed: () => buttonpressed(buttontext),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "numero español",
          style: TextStyle(fontSize: 20),
          
        ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.power),
          onPressed: () => shakti(),
          )
      ],
      backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Container(
              height: 250,
              width: double.infinity,
              child: Image.asset('kaladon/images/images.jpg'),
            ),
            Container(
              height:300 ,
              width: 500,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      buildButton("one", Color(0xff6ab04c)),
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
                  Row(
                    children: <Widget>[
                      buildButton("nine", Color(0xff00CCCD)),
                      buildButton("ten", Color(0xffF5BCBA)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
