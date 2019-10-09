import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Fullnews extends StatelessWidget {


   final data;
   final index;
   Fullnews({Key key,@required this.data, this.index}):super(key:key);
  @override
  Widget build(BuildContext context) {

          
    return Scaffold(
         appBar: AppBar(
           title: Text(data["articles"][index]["author"]),
         ),
         body: Container(
             child: WebView(
             initialUrl:    data["articles"][index]["url"],
           ),
         ),
          
    );
  }
}