import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:splashscreen/splashscreen.dart';
  

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SplashScreen(
      seconds: 10,
      navigateAfterSeconds: new HomePage(),
      title: new Text(
        'Welcome In MY NEWS', 
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0
      ),),
      image: new Image.asset('assets/two.png'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 160.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.red
    ),
    );
  }
}