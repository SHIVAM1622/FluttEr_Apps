import 'dart:math';

import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  


  int amm = 0;
//  var s = 7 ;
  var l = [
    7,
    20,
    4,
    98,
    34,
    0,
    23,
    12,
  ];
  int aj = 0;
  add(int index) {
    //  amm = amm + l[index];
    setState(() {
      amm = amm + l[index];
      
    });
  }

  changeamount() {
    //  aj =  Random().nextInt(l.length);
    setState(() {
      //  s=l[aj];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 200.0,
              width: double.infinity,
              color: Colors.yellow,
              child: Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "$amm",
                              style: TextStyle(
                                  fontSize: 50.0, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: <Widget>[Text("Earned Amount")],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext ktp, index) {
                  return Scratcher(
                    brushSize: 100,
                    threshold: 20,
                    imagePath: "assets/scratch.png",
                    imageFit: BoxFit.none,
                    onChange: (amount) {
                      // print("Scratch progress: $%");
                    },
                    onThreshold: () {
                      changeamount();
                      add(index);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      
                      child:
                      
                       Text(
                        "${l[index]}",
                        style: TextStyle(
                          fontSize: 50,
                        ),
                      ),
                      height: 150.0,
                      width: 150.0,
                      color: Colors.white54,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
