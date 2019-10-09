import 'package:flutter/material.dart';
import 'package:navlogin/signup.dart';
import 'HomePage.dart';
import 'category.dart';

void main(List<String> args) {
     

      runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
          home: HomePage(),
    routes: <String,WidgetBuilder>{

     
      "/login":(BuildContext context) => category(),
      "/signup":(BuildContext context) => Signup(),
    }
    );
  }
}