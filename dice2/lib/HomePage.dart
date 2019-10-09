import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var kala = "/dice1.png";
  var sakti = "/dice1.png";

  onpressed() {
    var s = Random().nextInt(6) + 1;
    var p = Random().nextInt(6) + 1;
    setState(() {
      switch (p.toInt()) {
        case 1:
          sakti = "/dice1.png";

          break;

        case 2:
          sakti = "/dice2.png";

          break;

        case 3:
          sakti = "/dice3.png";

          break;

        case 4:
          kala = "/dice4.png";

          break;

        case 5:
          sakti = "/dice5.png";

          break;

        case 6:
          kala = "/dice6.png";

          break;
        default:
      }
    });
    setState(() {
      switch (s.toInt()) {
        case 1:
          kala = "/dice1.png";

          break;

        case 2:
          kala = "/dice2.png";

          break;

        case 3:
          kala = "/dice3.png";

          break;

        case 4:
          kala = "/dice4.png";

          break;

        case 5:
          kala = "/dice5.png";

          break;

        case 6:
          kala = "/dice6.png";

          break;
        default:
      }
    });
  }

  s() {
    var s = Random().nextInt(6) + 1;

    setState(() {
      switch (s.toInt()) {
        case 1:
          kala = "/dice1.png";

          break;

        case 2:
          kala = "/dice2.png";

          break;

        case 3:
          kala = "/dice3.png";

          break;

        case 4:
          kala = "/dice4.png";

          break;

        case 5:
          kala = "/dice5.png";

          break;

        case 6:
          kala = "/dice6.png";

          break;
        default:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DICE ROLLER"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 130,
                  child: Image.asset("assets" + kala),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Container(
                    width: 100,
                    child: Image.asset("assets" + sakti),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Text("PRESS"),
                    color: Colors.white,
                    onPressed: onpressed,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Text("only one"),
                    color: Colors.white,
                    onPressed: s,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
